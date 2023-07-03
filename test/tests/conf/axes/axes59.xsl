<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- FileName: axes59 -->
  <!-- Document: http://www.w3.org/TR/xpath -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 2.2 Axes-->
  <!-- Creator: David Marston -->
  <!-- Purpose: Step through names on the namespace axis. Ensure attributes aren't counted. -->

<xsl:output method="xml" encoding="UTF-8" indent="no" />

<xsl:template match="/">
  <out>
    <xsl:apply-templates/>
  </out>
</xsl:template>

<xsl:template match="doc">
  <xsl:text>doc #</xsl:text>
  <xsl:number level="single" count="doc" from="docs"/>
  <xsl:text>: &#010;</xsl:text>
  <xsl:for-each select="namespace::*">
    <xsl:sort select="name(.)"/>
    <xsl:element name="{name(.)}"><xsl:value-of select="."/></xsl:element>
  </xsl:for-each>
  <xsl:text>&#010;</xsl:text>
</xsl:template>

<xsl:template match="text()"/><!-- To suppress empty lines -->


  <!--
   * Licensed to the Apache Software Foundation (ASF) under one
   * or more contributor license agreements. See the NOTICE file
   * distributed with this work for additional information
   * regarding copyright ownership. The ASF licenses this file
   * to you under the Apache License, Version 2.0 (the  "License");
   * you may not use this file except in compliance with the License.
   * You may obtain a copy of the License at
   *
   *     http://www.apache.org/licenses/LICENSE-2.0
   *
   * Unless required by applicable law or agreed to in writing, software
   * distributed under the License is distributed on an "AS IS" BASIS,
   * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   * See the License for the specific language governing permissions and
   * limitations under the License.
  -->

</xsl:stylesheet>
