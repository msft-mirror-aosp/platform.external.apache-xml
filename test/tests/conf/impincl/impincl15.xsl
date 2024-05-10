<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- FileName: impincl15 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 5.6 Overriding Template Rules -->
  <!-- Creator: David Marston -->
  <!-- Purpose: Test that apply-imports stays in same mode as what called it. -->

<xsl:import href="s.xsl"/>

<xsl:template match="doc">
  <out>
    <xsl:apply-templates mode="yes"/>
  </out>
</xsl:template>

<xsl:template match="tag" mode="yes">
  <div style="border: solid green">
    <xsl:apply-imports/>
  </div>
</xsl:template>

<xsl:template match="tag">
  <div style="border: solid red">
    <xsl:apply-imports/>
  </div>
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
