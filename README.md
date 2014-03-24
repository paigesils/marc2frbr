marc2frbr FRBRizer tool
=========
The marc2frbr FRBRizer is an open-source tool. The tool supports the conversion of records in the MARC format to a normalized set of records based on the FRBR model. The tool is implemented in XSLT.

FRBRizer utilizes a set of rules encoded in an XML file. An example of such rules file is given in `examples/marc21/marc21.rules.xml`. 

The `example` folder includes a demonstration of the tool. Simply run:
 `sh examples/marc21/run_conversion.sh`. 

 This example is based on `MARC21` but the tool is generic enough and can easily be adapted to other dialects of MARC.


Publications
----
1. Trond Aalberg: A Process and Tool for the Conversion of MARC Records to a Normalized FRBR Implementation. ICADL 2006: 283-292.
2. Trond Aalberg, Maja Zumer: Looking for Entities in Bibliographic Records. ICADL 2008: 327-330
3. Naimdjon Takhirov, Trond Aalberg, Fabien Duchateau, Maja Zumer: FRBR-ML: A FRBR-based framework for semantic interoperability. Semantic Web 3(1): 23-43 (2012)


Contact
----
<a href="http://www.idi.ntnu.no/people/trondaal">Trond Aalberg</a> 

<a href="http://folk.ntnu.no/takhirov">Naimdjon Takhirov</a>




License
----
The marc2frbr FRBRizer tool may be used free of charge under the conditions of the following license:

The MIT License

Copyright (c) 2014.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
