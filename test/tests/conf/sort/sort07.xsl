<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- FileName: SORT07 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 10 -->
  <!-- Purpose: Test for xsl:sort on a different element (not always present)
       which should have tie-breakers. -->

<xsl:template match="w3cgroup">
  <out>
    <xsl:apply-templates select="member">
      <xsl:sort select="alternate/name/first" order="ascending"/>
      <xsl:sort select="alternate/name/last" order="descending"/>
    </xsl:apply-templates>
  </out>
</xsl:template>

<xsl:template match="member">
  <xsl:value-of select="affiliation"/><xsl:text>: </xsl:text>
  <xsl:value-of select="alternate/name/first"/><xsl:text> </xsl:text>
  <xsl:value-of select="alternate/name/last"/><xsl:text>
</xsl:text>
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
