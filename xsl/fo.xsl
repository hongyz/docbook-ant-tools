<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format" version='1.0'>

	<xsl:import href="docbook/fo/docbook.xsl" />
	<xsl:import href="highlighting/fo-highlighting.xsl" />
	<xsl:import href="common.xsl" />
	
	<xsl:param name="keep.relative.image.uris" select="1" />
	<xsl:param name="img.src.path">./</xsl:param>
	
	<xsl:param name="callout.graphics" select="1" />
	<xsl:param name="admon.graphics" select="0" />

	<xsl:param name="callout.graphics.extension">.svg</xsl:param>
	<xsl:param name="admon.graphics.extension">.png</xsl:param>
	<xsl:template match="*" mode="admon.graphic.width">
		<xsl:text>24pt</xsl:text>
	</xsl:template>
	
	<xsl:param name="fop1.extensions" select="1" />
	
	<xsl:param name="ulink.footnotes" select="0" />
	<xsl:param name="ulink.show" select="0" />
	<xsl:param name="ulink.hyphenate">&#x200b;</xsl:param>
	<xsl:param name="ulink.hyphenate.chars">/&amp;?</xsl:param>

	<!-- <xsl:param name="paper.type">A4</xsl:param> -->

	<!-- <xsl:param name="body.font.family">'Times','SimSun'</xsl:param> -->
	<!-- 
	<xsl:param name="body.font.family">'Myriad Pro','FZLanTingKanHei-R-GBK'</xsl:param>
	 -->
	<xsl:param name="body.font.family">'FZLanTingKanHei-R-GBK'</xsl:param>
	<xsl:param name="body.font.master">10.5</xsl:param>
	<xsl:param name="title.font.family">'Myriad Pro','FZLTHK--GBK1-0'</xsl:param>
	<xsl:param name="dingbat.font.family">'Myriad Pro','FZLanTingKanHei-R-GBK'</xsl:param>
	<xsl:param name="monospace.font.family">'DroidSansMono','FZLanTingKanHei-R-GBK'</xsl:param>
	<xsl:param name="sans.font.family">'Myriad Pro','FZLanTingKanHei-R-GBK'</xsl:param>

	<xsl:param name="line-height">1.8em</xsl:param>

	<!-- 
	<xsl:param name="generate.toc">
		book toc,title
	</xsl:param>
	 -->
	 
	<xsl:param name="body.start.indent">0pt</xsl:param>

	<xsl:param name="draft.mode">no</xsl:param>
	
	<!-- 
	<xsl:attribute-set name="root.properties">
		<xsl:attribute name="color">#424242</xsl:attribute>
	</xsl:attribute-set>
	 -->

	<xsl:attribute-set name="admonition.properties">
		<xsl:attribute name="font-family">'Myriad Pro','FZKai-Z03'</xsl:attribute>
		<xsl:attribute name="font-size">90%</xsl:attribute>
		<xsl:attribute name="border-left-style">solid</xsl:attribute>
		<xsl:attribute name="border-left-color">black</xsl:attribute>
		<xsl:attribute name="border-left-width">1pt</xsl:attribute>
		<xsl:attribute name="padding-left">2em</xsl:attribute>
		<xsl:attribute name="margin-left">0em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="admonition.title.properties">
		<xsl:attribute name="font-family">'Myriad Pro','FZLTHK--GBK1-0'</xsl:attribute>
		<xsl:attribute name="font-size">90%</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="color">#1c4c7d</xsl:attribute>

		<xsl:attribute name="border-left-style">solid</xsl:attribute>
		<xsl:attribute name="border-left-color">black</xsl:attribute>
		<xsl:attribute name="border-left-width">1pt</xsl:attribute>
		<xsl:attribute name="padding-left">2em</xsl:attribute>
		<xsl:attribute name="margin-left">0em</xsl:attribute>

		<xsl:attribute name="space-after">0pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="formal.title.properties">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master * 0.9" />
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="hyphenate">false</xsl:attribute>
		<xsl:attribute name="space-after.minimum">0.4em</xsl:attribute>
		<xsl:attribute name="space-after.optimum">0.6em</xsl:attribute>
		<xsl:attribute name="space-after.maximum">0.8em</xsl:attribute>
		<xsl:attribute name="text-align">center</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="section.title.properties">
		<xsl:attribute name="line-height">3.0em</xsl:attribute>
		<xsl:attribute name="font-weight">400</xsl:attribute>
		<xsl:attribute name="font-size">12pt</xsl:attribute>
		<xsl:attribute name="text-align">left</xsl:attribute>
		<xsl:attribute name="color">#005c9d</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="section.title.level1.properties">
		<xsl:attribute name="font-size">14pt</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="section.title.level2.properties">
		<xsl:attribute name="font-size">12pt</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="section.title.level3.properties">
		<xsl:attribute name="font-size">12pt</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="section.title.level4.properties">
		<xsl:attribute name="font-size">12pt</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="section.title.level5.properties">
		<xsl:attribute name="font-size">12pt</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="section.title.level6.properties">
		<xsl:attribute name="font-size">12pt</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="component.title.properties">
		<xsl:attribute name="line-height">4.0em</xsl:attribute>
		<xsl:attribute name="font-weight">600</xsl:attribute>
		<xsl:attribute name="font-size">18pt</xsl:attribute>
		<xsl:attribute name="text-align">center</xsl:attribute>
		<xsl:attribute name="color">#1c4c7d</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:param name="hyphenate.verbatim" select="0"/>

	<xsl:attribute-set name="monospace.verbatim.properties">
		<xsl:attribute name="font-size">7pt</xsl:attribute>
		<xsl:attribute name="wrap-option">wrap</xsl:attribute>
		<xsl:attribute name="hyphenation-character">\</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="verbatim.properties">
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master * 0.8" />
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="space-before.minimum">0.8em</xsl:attribute>
		<xsl:attribute name="space-before.optimum">1em</xsl:attribute>
		<xsl:attribute name="space-before.maximum">1.2em</xsl:attribute>
		<xsl:attribute name="space-after.minimum">0.8em</xsl:attribute>
		<xsl:attribute name="space-after.optimum">1em</xsl:attribute>
		<xsl:attribute name="space-after.maximum">1.2em</xsl:attribute>
		<xsl:attribute name="padding">3pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:param name="shade.verbatim" select="1" />

	<xsl:attribute-set name="shade.verbatim.style">
		<xsl:attribute name="background-color">#f0f0f0</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="figure.properties">
		<xsl:attribute name="text-align">center</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="header.content.properties">
		<xsl:attribute name="font-family">'Myriad Pro','FZLTHK--GBK1-0'</xsl:attribute>
		<xsl:attribute name="font-size">9pt</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="footer.content.properties">
		<xsl:attribute name="font-family">'Myriad Pro','FZLTHK--GBK1-0'</xsl:attribute>
		<xsl:attribute name="font-size">9pt</xsl:attribute>
	</xsl:attribute-set>
	

	<xsl:attribute-set name="normal.para.spacing">
		<xsl:attribute name="text-indent">0em</xsl:attribute>
		<xsl:attribute name="space-before.optimum">1em</xsl:attribute>
		<xsl:attribute name="space-before.minimum">1em</xsl:attribute>
		<xsl:attribute name="space-before.maximum">1em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:template match="emphasis[@role='red']">
		<fo:inline color="#FF0000">
			<xsl:apply-templates />
		</fo:inline>
	</xsl:template>
	
	<xsl:template match="processing-instruction('hard-pagebreak')">
		<fo:block break-after='page'/>
	</xsl:template>

</xsl:stylesheet>
