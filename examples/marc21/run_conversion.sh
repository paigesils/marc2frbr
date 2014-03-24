#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
OUTPUT=$DIR/output

if [ ! -d "$OUTPUT" ]; then
	echo "Output will be written to $OUTPUT"
	mkdir $OUTPUT
fi

export CLASSPATH=../../lib/saxon.9.1.0.8.jar

echo "Making conversion xslt file"
java net.sf.saxon.Transform -s:marc21.rules.xml -o:$OUTPUT/marc21.conversion.xslt -xsl:../../xslt/make.xslt 

echo "Generated $OUTPUT/marc21.conversion.xslt."

echo "Running conversion"
java net.sf.saxon.Transform -s:marc21.example.records.xml -o:$OUTPUT/frbr.example.records.xml -xsl:$OUTPUT/marc21.conversion.xslt

echo "Records xml is written to '$OUTPUT/frbr.example.records.xml'"


echo "generating html page for user-friendly display"
cp ../../xslt/*.css $OUTPUT
java net.sf.saxon.Transform -s:$OUTPUT/frbr.example.records.xml -o:$OUTPUT/frbr.example.html -xsl:../../xslt/page.xsl xmlFileName="$OUTPUT/frbr.example.records.xml"

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   firefox $OUTPUT/frbr.example.html
elif [[ "$unamestr" == 'Darwin' ]]; then
   open $OUTPUT/frbr.example.html
fi
