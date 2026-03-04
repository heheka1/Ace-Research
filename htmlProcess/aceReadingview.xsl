<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
<!--        <xsl:variable name="aceColl" as="document-node()+" 
            select="collection('../htmlProcess/?select=*.html')"/>-->
        <TEI>
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title>
                            <xsl:apply-templates select="//head/title"/>/
                        </title>
                    </titleStmt>
                    <publicationStmt>
                        <p>Publication Information</p>
                    </publicationStmt>
                    <sourceDesc>
                        <p>Information about the source</p>
                    </sourceDesc>
                </fileDesc>
            </teiHeader>
            <text>
                <body>
                <xsl:apply-templates select="//body"/>
                </body>
            </text>
 
        </TEI>
    </xsl:template>
    
    <xsl:template match="main">
        <div type="main">
            <xsl:apply-templates/>
            
        </div>
    </xsl:template>
    <xsl:template match="h1">
        <head><xsl:apply-templates/></head>
    </xsl:template>
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="p">
        <text>
            <xsl:apply-templates/>
        </text>
    </xsl:template>
</xsl:stylesheet>