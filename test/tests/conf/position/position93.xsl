<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- FileName: position93 -->
  <!-- Document: http://www.w3.org/TR/xpath -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 4.1 -->
  <!-- Creator: David Marston -->
  <!-- Purpose: Test of position() in match pattern. Nodes are sorted. -->
  <!-- Elaboration: The nodes are processed in the sorted order, but the position() in the
     match pattern always refers to the node as found in the source tree. -->

<xsl:template match="doc">
  <out><xsl:text>&#10;</xsl:text>
    <xsl:apply-templates select="a">
      <xsl:sort select="@z" data-type="number"/>
    </xsl:apply-templates>
  </out>
</xsl:template>

<xsl:template match="a[position()=4]">
  <a4><xsl:value-of select="."/></a4><xsl:text>&#10;</xsl:text>
</xsl:template>

<xsl:template match="a[position()=3]">
  <a3><xsl:value-of select="."/></a3><xsl:text>&#10;</xsl:text>
</xsl:template>

<xsl:template match="a[position()=2]">
  <a2><xsl:value-of select="."/></a2><xsl:text>&#10;</xsl:text>
</xsl:template>

<xsl:template match="a[position()=1]">
  <a1><xsl:value-of select="."/></a1><xsl:text>&#10;</xsl:text>
</xsl:template>


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
