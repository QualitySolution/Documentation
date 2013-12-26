<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:doc="http://nwalsh.com/xsl/documentation/1.0"
                xmlns:exsl="http://exslt.org/common"
                xmlns:set="http://exslt.org/sets"
		version="1.0"
                exclude-result-prefixes="doc exsl set">

<!-- ********************************************************************
     $Id$
     ******************************************************************** 

     This file is part customization layer on top of the XSL DocBook
     Stylesheet distribution that generates webhelp output.

     ******************************************************************** -->

<xsl:import href="/usr/share/xml/docbook/stylesheet/nwalsh/current/webhelp/xsl/webhelp.xsl"/>

    <xsl:template name="webhelpheader.logo">
        <a target="_blank">
            <xsl:attribute name="href">
                <xsl:choose>
                    <xsl:when test="$branding = 'docbook'">http://qsolution.ru/</xsl:when>
                    <xsl:otherwise>http://qsolution.ru/</xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
        <img style='margin-right: 2px; height: 60px; padding-right: 25px; padding-top: 8px' align="right"
            src='common/images/qs_logo.png' alt="Quality Solution"/>
        </a>
    </xsl:template>

<!-- Убираем генерацию index.html с перенаправлением, который перезаписывал основной index.html -->
<xsl:template name="index.html"></xsl:template>

<!-- счетчики -->
<xsl:template name="user.webhelp.head.content">
<!--- Begin Google analitycs -->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-6007998-1', 'qsolution.ru');
ga('send', 'pageview');

</script>
<!--- END Google analitycs -->
<style type="text/css">
.screenshot {
  text-align: center;
}
</style>
</xsl:template>

</xsl:stylesheet>
