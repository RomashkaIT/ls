<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Kraftful</h1>
                <h2>Feedback</h2>
                <p>Total count of apps: <xsl:value-of select="count(//app)"/></p>
                <table>
                    <thead>
                        <tr><th>Name</th><th>Date</th><th>Total rank</th></tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="//app"/>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="app">
        <tr>
            <td><xsl:value-of select="@title"/></td>
            <td><xsl:value-of select="@date"/></td>
            <td><xsl:value-of select="sum(.//@rank)"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>