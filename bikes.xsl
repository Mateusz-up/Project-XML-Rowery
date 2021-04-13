<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
		<head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title>Bikes</title>
				<link rel="stylesheet" href="bikes.css" />
		</head>	
			<body>
			<div class="bikes">
			<h1 id="title">Bikes</h1>
			<xsl:for-each select="//bike">
				<xsl:choose>
				<xsl:when test='@type="Mountain"'>
                    <div class="kind">           
                       <xsl:attribute name="id">
                             <xsl:value-of select="@type" />
                                    </xsl:attribute>
                                    <h2>Mountain Bike</h2>
									<p class="name">
                                  <xsl:value-of select="name"/>
								  </p><br/>
								  <p class="data">Business: </p>
								  <p class="data"><xsl:value-of select="business"/></p><br/>
								  <p class="data">Wheels: </p>
								  <p class="data"><xsl:value-of select="wheels"/> inches</p><br/>
                                 <p class="data">Color: </p>
								 <p class="data"><xsl:value-of select="color"/></p><br/>
								 <p class="data">Price: </p>
								 <p class="data"><xsl:value-of select="price"/> zl </p><br/>
                                       <img> 
										<xsl:attribute name="src">
                                            <xsl:value-of select="img" />
                                        </xsl:attribute>
                                    </img>
								</div>	
                               </xsl:when>

							   <xsl:when test='@type="Road"'>
                                <div class="kind">
                       <xsl:attribute name="id">
                             <xsl:value-of select="@type" />
                                    </xsl:attribute>
                                    <h3>Road Bike</h3>
                                <p class="name">
                                  <xsl:value-of select="name"/>
								  </p><br/>
								   <p class="data">Business: </p>
								  <p class="data"><xsl:value-of select="business"/></p><br/>
								  <p class="data">Wheels: </p>
								  <p class="data"><xsl:value-of select="wheels"/> inches</p><br/>
                                 <p class="data">Color: </p>
								 <p class="data"><xsl:value-of select="color"/></p><br/>
								 <p class="data">Price: </p>
								 <p class="data"><xsl:value-of select="price"/> zl </p><br/>
                                       <img> 
										<xsl:attribute name="src">
                                            <xsl:value-of select="img" />
                                        </xsl:attribute>
                                    </img>
								</div>
							  </xsl:when>
							  							   
							   <xsl:when test='@type="BMX"'>
                                <div class="kind">
                       <xsl:attribute name="id">
                             <xsl:value-of select="@type" />
                                    </xsl:attribute>
                                    <h4>BMX</h4>
                              <p class="name">
                                  <xsl:value-of select="name"/>
								  </p><br/>
								  <p class="data">Business: </p>
								  <p class="data"><xsl:value-of select="business"/></p><br/>
								  <p class="data">Wheels: </p>
								  <p class="data"><xsl:value-of select="wheels"/> inches</p><br/>
                                 <p class="data">Color: </p>
								 <p class="data"><xsl:value-of select="color"/></p><br/>
								 <p class="data">Price: </p>
								 <p class="data"><xsl:value-of select="price"/> zl </p><br/>
                                       <img> 
										<xsl:attribute name="src">
                                            <xsl:value-of select="img" />
                                        </xsl:attribute>
                                    </img>
									</div>
                               </xsl:when>

				</xsl:choose>
				</xsl:for-each>
			</div>			
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>