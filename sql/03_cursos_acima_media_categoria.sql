
/*
=========================================================
EDUTECH BRASIL | SQL ANALYTICS
DESAFIO 03 - CURSOS ACIMA DA MEDIA POR CATEGORIA
=========================================================

Objetivo:
Identificar cursos com precos superiores a media
de sua propria categoria.

Tecnicas utilizadas:
- Subconsultas correlacionadas
- AVG
- ROUND
- WHERE
- ORDER BY

Resultado observado:
5 cursos com precos acima da media de suas categorias.

Banco de dados: Oracle Database
*/

SELECT
    C.NM_CURSO,
    C.DS_CATEGORIA,
    C.VL_PRECO,
    (
        SELECT ROUND(AVG(C2.VL_PRECO), 2)
        FROM T_EXE_CURSO C2
        WHERE C2.DS_CATEGORIA = C.DS_CATEGORIA
    ) AS MEDIA_CATEGORIA,
    ROUND(
        C.VL_PRECO - (
            SELECT AVG(C4.VL_PRECO)
            FROM T_EXE_CURSO C4
            WHERE C4.DS_CATEGORIA = C.DS_CATEGORIA
        ),
        2
    ) AS DIFERENCA_MEDIA
FROM T_EXE_CURSO C
WHERE C.VL_PRECO > (
    SELECT AVG(C3.VL_PRECO)
    FROM T_EXE_CURSO C3
    WHERE C3.DS_CATEGORIA = C.DS_CATEGORIA
)
ORDER BY C.DS_CATEGORIA, C.VL_PRECO DESC;
