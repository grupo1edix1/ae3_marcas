<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>

        <head>
            <title>ITE</title>
            <link rel="stylesheet" href="css/style.css" />
        </head>

        <body>

            <h1>
                <a href="https://www.edix.com/es/">
                    <xsl:value-of select="/ite/@nombre" />
                </a>
            </h1>



            <table border="2">
                <tr>
                    <td>ID</td>
                    <td>Profesor</td>
                </tr>
                <xsl:for-each select="/ite/profesores/profesor">
                    <tr>
                        <td>
                            <xsl:value-of select="id" />
                        </td>
                        <td>
                            <xsl:value-of select="nombre" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
            <br />
            <br />

            <h2>
                <a href="https://www.grupoproeduca.com/">
                    <xsl:value-of select="/ite/empresa"></xsl:value-of>
                </a>
            </h2>

            <div>
                <h3>ciclos</h3>
                <ul>
                    <xsl:for-each select="/ite/ciclos/ciclo">
                        <li>
                            <xsl:value-of select="/ite/ciclos/ciclo/@id" />
                        </li>
                        <ul>
                            <li>
                                <xsl:value-of select="nombre" />
                            </li>
                            <li>
                                <xsl:value-of select="grado" />
                            </li>
                            <li>
                                <xsl:value-of select="decretoTitulo/@año" />
                            </li>

                        </ul>
                    </xsl:for-each>
                </ul>
            </div>


            <input type="text" name="edad" placeholder="Escribe tu edad" />	
            <br/>
            <br/>
           
            Nombre: <input type="text" name="nombre" autofocus=""/>
            <br/>
            <br/>
           
            Apellidos: <input type="text" name="apellidos" required=""/>
            <br/>
            <br/>
          
         
            Email: <input type="email" name="email" required=""/>
    
            
            Edad: <input type="number" min="18" max="120" step="5" name="edadNumber" 
                    placeholder="Edad" required=""/>

        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>