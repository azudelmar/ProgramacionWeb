<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<head>
    <title>Cartelera de Cine</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #cccccc;
        }
    </style>
</head>

<body>
    <h2>Cartelera de Cine</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Título</th>
            <th>Director</th>
            <th>Año</th>
            <th>Género</th>
            <th>Duración</th>
            <th>Clasificación</th>
        </tr>

        <xsl:for-each select="cartelera/pelicula">
            <tr>
                <td><xsl:value-of select="@id"/></td>
                <td><xsl:value-of select="titulo"/></td>
                <td><xsl:value-of select="director"/></td>
                <td><xsl:value-of select="anio"/></td>
                <td><xsl:value-of select="genero"/></td>
                <td><xsl:value-of select="@duracion"/> min</td>
                <td><xsl:value-of select="@clasificacion"/></td>
            </tr>
        </xsl:for-each>

    </table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>