<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" version="1.0"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Directory of Persons</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
      <body>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Credential</th>
            <th>Phone</th>
            <th>Category</th>
          </tr>
          <xsl:for-each select="/Persons/Person">
            <xsl:sort select="Category"/>
            <tr>
              <td>
                <xsl:value-of select="Name"/>
              </td>
              <td>
                <xsl:value-of select="Credential"/>
              </td>
              <td>
                <xsl:value-of select="Phone"/>
              </td>
              <td>
                <xsl:value-of select="Category"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
