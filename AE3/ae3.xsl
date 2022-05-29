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
                    <div class="logo"><a href="{/ite/@web}"><img src="img/edx_logo_edix.svg"  alt="edix"/></a></div>
                    <h1 id="titular">
                        <a href="https://www.edix.com/es/">
                            <xsl:value-of select="/ite/@nombre" />
                        </a>
                    </h1>
                </header>

                <div class="principal">
                    <h2>QUIÉNES SOMOS</h2>
                </div>
                <div class="jefatura">
                    <div class="block">
                        <div class="cargo">
                        <h3>
                            Director:
                            <xsl:value-of select="/ite/director/nombre" />
                        </h3>
                    </div>
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
                        <div class="cargo">
                        <h3>
                            Jefe de Estudios:
                            <xsl:value-of select="/ite/jefe_estudiosr/nombre" />
                        </h3>
                </div>
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
                <div class="block">
                    <div class="cargo">
                    <h3>
                        Equipo Docente:
                        </h3>
                    </div>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Profesor</th>
                        </tr>
                        <xsl:for-each select="/ite/profesores/profesor">
                            <tr>
                                <td id="id">
                                    <xsl:value-of select="id" />
                                </td>
                                <td id="nombre">
                                    <xsl:value-of select="nombre" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

                <div class="block">
                    <div class="cargo">
                    <h3>Ciclos:</h3>
                </div>
                    <table>
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
            <div class="principal">
                <h2>CONTACTA CON NOSOTROS</h2>
            </div>

            <div class="form-style-2">
                <form action="#" method="get">
                <label for="nombre"><span>Nombre <span class="required">*</span></span><input type="text" class="input-field" name="nombre" value="" /></label>
                <label for="apellidos"><span>Apellidos <span class="required">*</span></span><input type="text" class="input-field" name="apellidos" value="" /></label>
                <label for="email"><span>Email <span class="required">*</span></span><input type="email" class="input-field" name="email" value="" /></label>
                <label for="comentario"><span>Comentario <span class="required">*</span></span><textarea name="comment" class="textarea-field"></textarea></label>
                
                <label><span> </span><input type="submit" value="Enviar" /></label>
                </form>
                </div>
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