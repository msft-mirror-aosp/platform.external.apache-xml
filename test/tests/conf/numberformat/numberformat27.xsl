<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- FileName: NUMBERFORMAT27 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 12.3 -->
  <!-- Creator: David Marston -->
  <!-- Purpose: Test of format-number minus-sign behavior on positive numbers. -->

<xsl:decimal-format name="myminus" minus-sign='_' />

<xsl:template match="doc">
  <out>All three should be the same...<xsl:text>
</xsl:text><xsl:value-of select="format-number(2392.14*36.58,'000,000.000000','myminus')"/><xsl:text>
</xsl:text><xsl:value-of select="format-number(2392.14*36.58,'000,000.000000;###,###.000###')"/><xsl:text>
</xsl:text><xsl:value-of select="format-number(2392.14*36.58,'000,000.000000;###,###.000###','myminus')"/>
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