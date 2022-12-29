<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:mam="whatever"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:output indent="yes" method="xml" encoding="utf-8" omit-xml-declaration="false"/>
   
    <xsl:template match="//tei:date/@when[string-length(.)&lt;4]">
        <xsl:attribute name="when">
            <xsl:choose>
                <xsl:when test="string-length(.)=1">
                    <xsl:value-of select="concat('000', .)"/>
                </xsl:when>
                <xsl:when test="string-length(.)=2">
                    <xsl:value-of select="concat('00', .)"/>
                </xsl:when>
                <xsl:when test="string-length(.)=3">
                    <xsl:value-of select="concat('0', .)"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="."/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:template>
       
   
</xsl:stylesheet>
