<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html lang="pt-PT">
<meta charset="utf-8"/> 
<head>
<style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          table, th, td {
            border: 1px solid black;
          }
          th, td {
            padding: 10px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Filmes em Cartaz</h2>
        <table>
          <tr>
            <th>Show ID</th>
            <th>Title</th>
            <th>Director</th>
            <th>Country</th>
            <th>Release Year</th>
            <th>Rating</th>
            <th>Duration</th>
            <th>Listed In</th>
            <th>Description</th>
            <th>Type</th>
            <th>Date Added</th>
            <th>Review</th>
          </tr>

          <!-- Loop pelos elementos no XML -->
          <xsl:for-each select="Rows/Row">
            <tr>
              <td><xsl:value-of select="show_id"/></td>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="director"/></td>
              <td><xsl:value-of select="country"/></td>
              <td><xsl:value-of select="release_year"/></td>
              <td><xsl:value-of select="rating"/></td>
              <td><xsl:value-of select="duration"/></td>
              <td><xsl:value-of select="listed_in"/></td>
              <td><xsl:value-of select="description"/></td>
              <td><xsl:value-of select="type"/></td>
              <td><xsl:value-of select="date_added"/></td>
              <td><xsl:value-of select="review"/></td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>

  </xsl:template>
  
</xsl:stylesheet>
