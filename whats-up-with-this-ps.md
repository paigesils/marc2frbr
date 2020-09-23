http://jodischneider.com/pubs/2008may_frbr.html
http://www.loc.gov/marc/marc-functional-analysis/tool.html#display

From Jodi Schneider:

The process can be summarized as: MARC --> MARC XML --> clean --> match --> FRBRized MODS --> html display

The output from each step: (input.mrc) --> slimfrbr.xml --> clean.xml --> match.xml --> output.xml --> output.html

The XSLT from each step: (marc4j.jar) --> http://www.loc.gov/standards/marcxml/frbr/v2/clean.xsl --> http://www.loc.gov/standards/marcxml/frbr/v2/match.xsl --> http://www.loc.gov/standards/marcxml/frbr/v2/FRBRize.xsl --> http://www.loc.gov/standards/marcxml/frbr/frbr2html.xsl

This final transformation, which serializes to an html display format, is called inside the FRBRize.xsl stylesheet, as an xsl:processing-instruction. Throughout the process, the MARCXML utility transformations http://www.loc.gov/marcxml/xslt/MARC21slimUtils.xsl are used via an xsl:import.

