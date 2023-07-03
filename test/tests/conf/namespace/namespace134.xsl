<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:pfix="party.com">

  <!-- FileName: namespace134 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 2.4 -->
  <!-- Creator: David Marston -->
  <!-- Purpose: Declare prefixed namespace at stylesheet level, then use another prefix in
    attribute name, but same namespace. New namespace-decl must be issued, or change prefix. -->
  <!-- This test raises another facet of the issue of supplied prefixes on the attribute
    name. Processor developers could disagree about whether the combination of a prefixed
    name and an explicit namespace attribute with a URI signals a request from the
    stylesheet to generate a namespace declaration, even when the requested URI is already
    available to apply to the attribute simply by using a different prefix. In other words,
    does the stylesheet really want to ensure that an xmlns:other declaration is issued? -->

<xsl:output method="xml" indent="no" encoding="UTF-8"/>

<xsl:template match="/">
  <out>
    <xsl:element name="inner">
      <xsl:attribute name="other:nuts" namespace="party.com">almond</xsl:attribute>
    </xsl:element>
  </out>
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
