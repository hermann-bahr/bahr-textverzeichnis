<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:mam="whatever"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:output indent="yes" method="xml" encoding="utf-8" omit-xml-declaration="false"/>
   
    <xsl:template match="mam:irregularDeathDate">
        <xsl:element name="death" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:element name="date" namespace="http://www.tei-c.org/ns/1.0">
                <xsl:attribute name="when-custom">
                    <xsl:value-of select="."/>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="mam:irregularBirthDate">
        <xsl:element name="birth" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:element name="date" namespace="http://www.tei-c.org/ns/1.0">
                <xsl:attribute name="when-custom">
                    <xsl:value-of select="."/>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>
