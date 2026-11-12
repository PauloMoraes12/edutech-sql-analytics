/*
Projeto: EduTech Brasil
FIAP - Fase 06 | Capítulo 03

Desafio 01: Cursos acima da média geral

Objetivo:
Identificar cursos com preços superiores à
média geral da plataforma e calcular a
diferença absoluta de preço.

Banco: Oracle Database
*/

SELECT
    NM_CURSO,
    DS_CATEGORIA,
    VL_PRECO,
    ROUND(
        VL_PRECO - (
            SELECT AVG(VL_PRECO)
            FROM T_EXE_CURSO
        ),
        2
    ) AS DIFERENCA_MEDIA
FROM T_EXE_CURSO
WHERE VL_PRECO > (
    SELECT AVG(VL_PRECO)
    FROM T_EXE_CURSO
)
ORDER BY DIFERENCA_MEDIA DESC;