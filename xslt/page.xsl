<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:f="http://idi.ntnu.no/frbrizer/"
				xmlns:marc21="http://www.loc.gov/MARC21/slim">
	<xsl:param name="xmlFileName" select="xmlFileName"/>
	<xsl:template match="/">
		<html>
			<head> <title>FRBRizer example</title>
			<link rel="stylesheet" href="page.css"/>
			</head>
			<body>
				<div id="main">
					<div class="logo">MARC2FRBR Frbrizer v0.1</div>
					<div class="notice">This is a user-friendly display of XML file: <xsl:value-of select="$xmlFileName"/></div>
					<xsl:apply-templates
						select="marc21:collection/marc21:record[@f:type='http://iflastandards.info/ns/fr/frbr/frbrer/C1001']"
					/>
				</div>
				<div class="copyright">&#169; 2016 NTNU, IDI.</div>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="marc21:record[@f:type='http://iflastandards.info/ns/fr/frbr/frbrer/C1001']">
		<div>
			<b>
				<xsl:variable name="createdBy" select="f:relationship[@f:type='http://iflastandards.info/ns/fr/frbr/frbrer/P2009']/@f:href"></xsl:variable>
				<!--<xsl:value-of select="marc21:datafield[@tag='240']/marc21:subfield"/>-->
				<xsl:value-of select="f:label"/>   (<xsl:apply-templates select="../marc21:record[@f:id = $createdBy]"/>)
			</b>
			<xsl:variable name="realizations" select="f:relationship[@f:type='http://iflastandards.info/ns/fr/frbr/frbrer/P2009']/@f:href"></xsl:variable>
			<xsl:for-each select="f:relationship[@f:type='http://iflastandards.info/ns/fr/frbr/frbrer/P2001']">
				<xsl:variable name="exp" select="@f:href"/>
				<xsl:apply-templates select="../../marc21:record[@f:id = $exp]"/>				
			</xsl:for-each>
			<hr/>
		</div>
	</xsl:template>
	
	<xsl:template match="marc21:record[@f:type = 'http://iflastandards.info/ns/fr/frbr/frbrer/C1002']">
		<div class="expressionLang"><xsl:value-of select="marc21:datafield/marc21:subfield[@f:type = 'http://iflastandards.info/ns/fr/frbr/frbrer/P3011']"/></div>
		<div class="expressionTitle"><xsl:value-of select="marc21:datafield/marc21:subfield[@f:type = 'http://iflastandards.info/ns/fr/frbr/frbrer/P3008']"/></div>
		<xsl:for-each select="f:relationship[@f:type='http://iflastandards.info/ns/fr/frbr/frbrer/P2003']">
			<xsl:variable name="manif" select="@f:href"/>
			<xsl:apply-templates select="../../marc21:record[@f:id = $manif]"/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="marc21:record[@f:type='http://iflastandards.info/ns/fr/frbr/frbrer/C1003']">
		<div><xsl:value-of select="f:label"/></div>
	</xsl:template>
	
	<xsl:template match="marc21:record[@f:type='http://iflastandards.info/ns/fr/frbr/frbrer/C1005']">
		<xsl:value-of select="f:label"/>
	</xsl:template>
</xsl:stylesheet>
