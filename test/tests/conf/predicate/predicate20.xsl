<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- FileName: PREDICATE20 -->
  <!-- Document: http://www.w3.org/TR/xpath -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 3.4 -->
  <!-- Creator: David Marston -->
  <!-- Purpose: Test of implied conversion of node-set to string, ensure = is symmetric. -->

<xsl:template match="doc">
  <out>
    <xsl:value-of select="a[descendant::*='target']"/>
    <!-- True only when the node has a descendant containing "target". -->
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
