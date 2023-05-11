<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="msxsl">

    <xsl:template match="data">

        <html lang="ru">

            <head>
                <meta charset="UTF-8" />
                <meta name="viewport"
                      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
                <meta http-equiv="X-UA-Compatible" content="ie=edge" />
                <link href="../styles/stake.css" rel="stylesheet"/>
                <link href="../styles/about1.css" rel="stylesheet"/>
            </head>

            <body>
                <div class="header">
                    <div class="header__section">
                        <svg xmlns="http://www.w3.org/2000/svg" version="1.0" width="48.000000pt" height="48.000000pt"
                             viewBox="0 0 291.000000 211.000000" preserveAspectRatio="xMidYMid meet">

                            <g transform="translate(0.000000,211.000000) scale(0.100000,-0.100000)" fill="#000000" stroke="none">
                                <path d="M605 1657 c-4 -8 50 -92 126 -198 l131 -184 -5 -62 c-7 -74 -21 -51 225 -369 244 -314 234 -299 222 -332 -8 -22 -15 -27 -44 -27 -35 0 -37 2 -245 315 l-210 315 -45 8 c-25 4 -54 13 -66 18 -11 6 -79 91 -150 190 -89 123 -134 179 -147 179 -15 0 -18 -6 -15 -22 7 -35 249 -369 282 -389 15 -9 47 -20 70 -23 l41 -7 205 -305 c113 -169 214 -312 225 -320 11 -8 37 -14 58 -14 72 0 119 80 85 143 -11 21 -129 177 -343 453 l-102 131 5 56 c2 33 -1 69 -8 86 -19 47 -256 366 -274 369 -9 2 -19 -3 -21 -11z"/>
                                <path d="M1282 1645 c-80 -37 -171 -133 -217 -230 -35 -72 -39 -88 -43 -182 -4 -90 -3 -103 12 -109 29 -11 37 10 41 102 4 133 49 232 142 314 155 136 301 92 279 -84 -19 -148 -146 -297 -286 -337 -54 -15 -100 -45 -100 -65 0 -23 26 -27 54 -9 13 9 47 22 73 29 172 46 324 259 311 438 -10 135 -131 196 -266 133z"/>
                                <path d="M494 1577 c-5 -14 192 -309 224 -335 13 -10 19 -9 30 2 13 13 0 36 -99 178 -109 154 -142 188 -155 155z"/>
                                <path d="M1798 1103 c64 -126 72 -151 72 -213 0 -88 23 -76 31 16 4 56 15 87 52 162 43 84 45 92 27 92 -12 0 -24 -9 -29 -22 -24 -62 -63 -139 -68 -134 -3 3 -21 38 -39 78 -24 53 -39 74 -54 76 -20 3 -20 1 8 -55z"/>
                                <path d="M2107 999 c2 -89 5 -164 7 -166 3 -3 10 -2 16 2 8 5 11 47 10 129 -1 66 -1 126 0 131 0 6 20 -42 43 -105 25 -69 48 -115 56 -115 8 0 30 46 55 114 l41 114 5 -132 c7 -187 24 -169 28 29 l2 160 -22 0 c-20 0 -28 -14 -62 -115 -22 -63 -43 -115 -47 -115 -4 0 -25 51 -47 113 -34 97 -43 112 -63 115 l-24 3 2 -162z"/>
                                <path d="M730 763 c-132 -171 -145 -192 -145 -235 0 -72 75 -116 148 -89 29 11 187 240 187 270 0 13 -6 21 -17 21 -12 0 -46 -44 -98 -123 -71 -108 -83 -122 -111 -125 -35 -3 -56 16 -56 52 0 15 37 73 101 157 56 73 100 140 99 148 -7 37 -36 17 -108 -76z"/>
                            </g>
                        </svg>
                    </div>
                    <div class="header__item"><a href="Ресторан.html" target="_blank">ПЛАНИРОВКА</a></div>
                    <div class="header__item"><a href="../Курсач.html">НАЗАД</a></div>
                    <div class="header__item"><a href="about.html">О НАС</a></div>

                </div>

                <section class="info">
                    <div class="container">
                        <xsl:apply-templates select="products" />
                    </div>
                </section>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="products">
        <xsl:apply-templates select="product" />
    </xsl:template>

    <xsl:template match="product">
        <div class="stake" id="stake">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="href"/>
                </xsl:attribute>
            </img>
            <div class="label">
                <xsl:value-of select="name"/>
            </div>
            <div class="text">
                <xsl:value-of select="text"/>
            </div>
            <div class="cost">
                Цена: <xsl:value-of select="cost"/>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
