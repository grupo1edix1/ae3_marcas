<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!--
    <?xml version="1.0"?>

    <ite nombre="Instituto Tecnol󧩣o Edix" web="https://institutotecnologico.edix.com" telefono="+34 91 787 39 91" empresa="Proeduca">
        <equipo_docente>
            <director nombre="Chon" despacho="Numero 31, 3ª Planta, Edificio A" />
            <jefe_estu nombre="Dani" despacho="Numero 27, 2ª Planta, Edificio B" />
            <profesores>
                <profesor id="1" nombre="F鬩x" />
                <profesor id="2" nombre="Raúl" />
                <profesor id="3" nombre="Raquel" />
                <profesor id="4" nombre="Tom᳢ />
            </profesores>
        </equipo_docente>
        <ciclos>
            <ciclo nombre=" Administraci󮠤e Sistemas Informᴩcos en Red" grado=" Superior" decreto=" 2009">ASIR</ciclo>
            <ciclo nombre=" Desarrollo de Aplicaciones Web" grado=" Superior" decreto=" 2010">DAW</ciclo>
            <ciclo nombre=" Desarrollo de Aplicaciones Multiplataforma" grado=" Superior" decreto=" 2010">DAM</ciclo>
        </ciclos>
    </ite>
-->

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <ite nombre="Instituto Tecnológico Edix" web="https://institutotecnologico.edix.com">
            <xsl:attribute name="telefono"><xsl:value-of select="ite/telefono"/></xsl:attribute>
            <xsl:attribute name="empresa"><xsl:value-of select="ite/empresa"/></xsl:attribute>
            <equipo>
                <director>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="ite/director/nombre" />
                        </xsl:attribute>
                    <xsl:attribute name="despacho">
                    <xsl:value-of select="ite/director/despacho" />
                    </xsl:attribute>
                       

        </director>

        <jefe_estu>

            <xsl:attribute name="nombre">
                <xsl:value-of select="ite/jefe_estudios/nombre" />
                </xsl:attribute>
            <xsl:attribute name="despacho">
            <xsl:value-of select="ite/jefe_estudios/despacho" />
            </xsl:attribute>

        </jefe_estu>
            <profesores>
                <xsl:for-each select="ite/profesores/profesor">
                    <profesor>
                        <xsl:attribute name="id">
                            <xsl:value-of select="id" />
                        </xsl:attribute>
                        <xsl:attribute name="nombre">
                            <xsl:value-of select="nombre" />
                        </xsl:attribute>
                    </profesor>
                </xsl:for-each>
            </profesores>
        </equipo>
        <ciclos>
            <xsl:for-each select="ite/ciclos/ciclo">
                <ciclo>
                    <xsl:attribute name="nombre"><xsl:value-of select="nombre" /></xsl:attribute>
                    <xsl:attribute name="grado"><xsl:value-of select="grado" /></xsl:attribute>
                    <xsl:attribute name="decreto"><xsl:value-of select="decretoTitulo/@año" /></xsl:attribute>
                    <xsl:value-of select="@id" />
                </ciclo>
        </xsl:for-each>
        </ciclos>
        </ite>
    </xsl:template>
</xsl:stylesheet>