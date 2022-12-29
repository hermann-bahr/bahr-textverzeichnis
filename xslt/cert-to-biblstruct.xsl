<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:mam="whatever"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:output indent="yes" method="xml" encoding="utf-8" omit-xml-declaration="false"/>
   
   <xsl:template match="tei:persName[mam:altname]">
       <xsl:element name="persName" namespace="http://www.tei-c.org/ns/1.0">
           <xsl:copy-of select="@*|tei:*"/>
       </xsl:element>
       <xsl:element name="persName" namespace="http://www.tei-c.org/ns/1.0">
           <xsl:attribute name="type">
               <xsl:text>namensvariante</xsl:text>
           </xsl:attribute>
           <xsl:copy-of select="mam:*"/>
       </xsl:element>
   </xsl:template>
   
    
</xsl:stylesheet>
