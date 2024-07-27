<?xml version="1.0"?>
<!--Namespaces are global if you set them in the stylesheet element-->
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    version="1.0"   
    xmlns:lxslt="http://xml.apache.org/xslt"
    xmlns:my-ext="ext2"
    extension-element-prefixes="my-ext">
    
<!-- Copied from: java/samples/extensions/5-numlistJscript.xsl -->

  <!--The component and its script are in the lxslt namespace and define the implementation-->
  <lxslt:component prefix="my-ext" elements="timelapse" functions="getdate">
    <lxslt:script lang="javascript">
      var multiplier=1;
      // Extension element implementations always take two arguments. The first
      // argument is the XSL Processor context; the second argument is the element.
      function timelapse(xslProcessorContext, elem)
      {
        multiplier=parseInt(elem.getAttribute("multiplier"));
        // The element return value is placed in the result tree.
        // If you do not want a return value, return null.
        return null;
      }
      function getdate(numdays)
      {
        // Use a constant date so test output is determinate
        var d = new Date(2001, 8, 5);
        d.setDate(d.getDate() + parseInt(numdays*multiplier));
        return d.toLocaleString();
      }
    </lxslt:script>
  </lxslt:component>
      
  <xsl:template match="deadline">
  <out>
    <p><my-ext:timelapse multiplier="2"/>We have received your enquiry and will 
      respond by <xsl:value-of select="my-ext:getdate(string(@numdays))"/></p>
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