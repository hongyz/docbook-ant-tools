<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format" version='1.0'>
	
	<xsl:param name="l10n.gentext.language" select="'zh_CN'" />
	<xsl:param name="callout.graphics.path">resources/callouts/</xsl:param>
	<xsl:param name="admon.graphics.path">resources/admonitions/</xsl:param>
	
	<xsl:param name="section.label.includes.component.label" select="1" />
	<xsl:param name="section.autolabel" select="1" />
	<xsl:param name="chapter.autolabel" select="1" />
	
	<xsl:param name="formal.title.placement">
		figure after
		example before
		equation before
		table before
		procedure before
	</xsl:param>
	
	<xsl:param name="generate.toc">
		appendix toc,
		title article/appendix nop article toc,
		title book toc,
		title chapter toc,
		title part toc,
		title preface toc,
		title qandadiv toc qandaset toc reference toc,
		title sect1 toc sect2 toc sect3 toc sect4 toc sect5 toc section toc set toc,
		title
	</xsl:param>
	
</xsl:stylesheet>