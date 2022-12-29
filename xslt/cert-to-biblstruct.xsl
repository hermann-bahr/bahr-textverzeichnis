<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:mam="whatever"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:output indent="yes" method="xml" encoding="utf-8" omit-xml-declaration="false"/>
   
   <xsl:template match="tei:ref/tei:listPerson/tei:person">
       <xsl:variable name="id" select="concat(ancestor::tei:biblStruct/@xml:id, '_p', count(preceding-sibling::tei:person) +1)"/>
       <xsl:element name="person" namespace="http://www.tei-c.org/ns/1.0">
           <xsl:attribute name="xml:id">
               <xsl:value-of select="$id"/>
           </xsl:attribute>
           <xsl:copy-of select="*"/>
       </xsl:element>
   </xsl:template>
   
</xsl:stylesheet>
