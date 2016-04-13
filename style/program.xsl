<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>Program Details | CCECE 2016</title>
    
    <meta name="identifier-url" content="http://ccece2016.ieee.ca" />
    <meta name="description" content="The 29th Annual IEEE Canadian Conference on Electrical and Computer Engineering (CCECE 2016) will be held in Vancouver, British Columbia, Canada from May 15 to 18, 2016. CCECE is the flagship conference for researchers, students, and professionals in the area of Electrical and Computer Engineering from Canada and around the world to meet annually in a Canadian city to disseminate their research advancements and discoveries, to network and exchange ideas in order to strengthen existing partnerships and foster new collaborations." />
    <meta name="abstract" content="The 29th Annual IEEE Canadian Conference on Electrical and Computer Engineering (CCECE 2016) will be held in Vancouver, British Columbia, Canada from May 15 to 18, 2016. CCECE is the flagship conference for researchers, students, and professionals in the area of Electrical and Computer Engineering from Canada and around the world to meet annually in a Canadian city to disseminate their research advancements and discoveries, to network and exchange ideas in order to strengthen existing partnerships and foster new collaborations." />
    <meta name="keywords" content="CCECE, conference, IEEE, Canada, ECE, Vancouver, Electrical and Computer Engineering" />
    <meta name="author" content="Stephen Makonin" />
    <meta name="revisit-after" content="5" />
    <meta name="language" content="EN" />
    <meta name="copyright" content="Copyright © 2015-2016 IEEE CCECE Vancouver Organizing Committee." />
    <meta name="robots" content="All" />
    
    <!-- css -->
    <link rel="stylesheet" href="style/bootstrap.min.css"/>
    <link rel="stylesheet" href="style/ionicons.min.css"/>
    <link rel="stylesheet" href="style/main.css"/>
</head>  
<body data-spy="scroll" data-target="#site-nav">
    <nav id="site-nav" class="navbar navbar-fixed-top navbar-details">
        <div class="container">
            <div class="navbar-header">
                <div class="site-branding">
                    <a class="logo" href="index.html">
                        <img class="logo1" src="images/ieee.png" alt="CCECE 2016"/>
                        
                        <span> CCECE 2016 | Program Details</span>
                    </a>
                </div>
            </div>
        </div>
    </nav>
    
    <section id="s" class="section details" style="padding-top:5em;">
        <div class="container">
        <div class="row">
          <xsl:for-each select="program/session">
          <div class="program-session">
              
            <span class="session-title">
              <span style="font-weight:bold"><xsl:value-of select="papers/paper/trackname"/>: </span> 
              <xsl:value-of select="code"/> - <xsl:value-of select="sessiontitle"/>
            </span>
              
            <strong>Date/Time/Location: </strong> &#160; <xsl:value-of select="date"/> @ <xsl:value-of select="range"/> in Room
            <xsl:choose>
              <xsl:when test="room=''">TBD</xsl:when>
              <xsl:otherwise><xsl:value-of select="room"/></xsl:otherwise>
            </xsl:choose>
            <br/>
              
            <strong>Session Chair: </strong> &#160; 
            <xsl:choose>
              <xsl:when test="chairs/chair"><xsl:value-of select="chairs/chair/name"/> (<xsl:value-of select="chairs/chair/affiliation"/>, <xsl:value-of select="chairs/chair/country"/>)</xsl:when>
              <xsl:otherwise>TBD</xsl:otherwise>
            </xsl:choose>
            <br/>
              
            <dl>
            <xsl:for-each select="papers/paper">
              <dt><xsl:value-of select="starttime"/>-<xsl:value-of select="endtime"/></dt>
              <dd>
                <span> <xsl:value-of select="papertitle"/></span>             
                <ul>
                <xsl:for-each select="authors/author">
                  <xsl:if test="presenter=1">
                  <li>Presented by <xsl:value-of select="name"/> (<xsl:value-of select="affiliation"/>, <xsl:value-of select="country"/>)</li>
                  </xsl:if>
                </xsl:for-each>
                </ul>
              </dd>
            </xsl:for-each>
            </dl>
              
          </div>
          </xsl:for-each>
        </div>
        </div>
    </section>
    
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p class="site-info">
                        Copyright &#169; 2015-2016 IEEE CCECE Vancouver Organizing Committee. All rights reserved.<br/>
                        <small>Template Designed by <a href="http://technextit.com">Technext Limited</a></small>
                    </p>
                    <ul class="social-block">
                        <li>
                            Follow us on <a href="https://twitter.com/CCECE2016">Twitter</a>
                            &#160;&#160;&#160;&#160;&#160;
                            <a href="https://twitter.com/CCECE2016"><i class="ion-social-twitter"></i></a>
                            and stay up-to-date!
                        </li>
                        <!--<li><a href=""><i class="ion-social-facebook"></i></a></li>
                        <li><a href=""><i class="ion-social-linkedin-outline"></i></a></li>
                        <li><a href=""><i class="ion-social-googleplus"></i></a></li>-->
                    </ul>
                </div>
            </div>
        </div>
    </footer>

<!-- Start of StatCounter Code for Default Guide -->
<script type="text/javascript">
//<![CDATA[
var sc_project=10556566; 
var sc_invisible=1; 
var sc_security="0d1e111d"; 
var scJsHost = (("https:" == document.location.protocol) ?
"https://secure." : "http://www.");
document.write("<sc"+"ript type='text/javascript' src='" +
scJsHost+
"statcounter.com/counter/counter_xhtml.js'></"+"script>");
//]]>
</script>
<noscript><div class="statcounter"><a title="shopify stats"
href="http://statcounter.com/shopify/"
class="statcounter"><img class="statcounter"
src="http://c.statcounter.com/10556566/0/0d1e111d/1/"
alt="shopify stats" /></a></div></noscript>
<!-- End of StatCounter Code for Default Guide -->
</body>
</html>