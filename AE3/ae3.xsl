<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>

            <head>
                <title>ITE</title>
                <link rel="stylesheet" href="css/style.css" />
            </head>

            <body>
                <header>
                    <h1>
                        <a href="https://www.edix.com/es/">
                            <xsl:value-of select="/ite/@nombre" />
                        </a>
                    </h1>
                </header>


                <div class="jefatura">
                    <div class="block">
                        <h3>
                            Director:
                            <xsl:value-of select="/ite/director/nombre" />
                        </h3>
                        <ul>
                            <li>
                                <h4>Despacho: </h4>
                                <xsl:value-of select="/ite/director/despacho" />
                            </li>
                            <li>
                                <h4>Dirección: </h4>
                                CALLE BRUNO ABUNDEZ, 48 28031 MADRID: Madrid: España
                            </li>
                        </ul>
                    </div>
                    <div class="block">
                        <h3>
                            Jefe de Estudios:
                            <xsl:value-of select="/ite/jefe_estudiosr/nombre" />
                        </h3>
                        <ul>
                            <li>
                                <h4>Despacho: </h4>
                                <xsl:value-of select="/ite/jefe_estudios/despacho" />
                            </li>
                            <li>
                                <h4>Dirección: </h4>
                                CALLE BRUNO ABUNDEZ, 48 28031 MADRID: Madrid: España
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="container">
                <div class="profesores">
                    <h3>
                        Equipo Docente:
                        </h3>
                    <table border="2">
                        <tr>
                            <th>ID</th>
                            <th>Profesor</th>
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
                </div>

                <div class="ciclos">
                    <h3>Ciclos:</h3>
                    <table border="2">
                        <xsl:for-each select="/ite/ciclos/ciclo">
                            <tr>
                                <th colspan="3">
                                    <xsl:value-of select="@id" />
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="grado" />
                                </td>
                                <td>
                                    <xsl:value-of select="decretoTitulo/@año" />
                                </td>

                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </div>

                <form>

                    <h3>Nombre:</h3>
                    <input type="text" name="nombre" autofocus="" />


                    <h3>Apellidos:</h3>
                    <input type="text" name="apellidos" required="" />


                    <h3>Email:</h3>
                    <input type="email" name="email" required="" />


                    <h3>Edad: </h3>
                    <input type="number" min="18" max="120" name="edadNumber" placeholder="Escribe tu edad" required="" />
                    <input type="submit" value="Enviar" />
                </form>
                <footer>
                    <h4>
                        Telefono:
                        <xsl:value-of select="ite/telefono" />
                    </h4>
                    <h4>
                        Empresa:
                        <xsl:value-of select="ite/empresa" />
                    </h4>
                    <a href="{/ite/@web}">
                        <xsl:value-of select="ite/@nombre" />
                    </a>
                </footer>

            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>