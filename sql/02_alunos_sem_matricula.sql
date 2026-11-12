
/*
=========================================================
EDUTECH BRASIL | SQL ANALYTICS
DESAFIO 02 - ALUNOS SEM MATRICULA
=========================================================

Objetivo:
Identificar alunos cadastrados que ainda nao possuem
matricula em nenhum curso da plataforma.

Tecnicas utilizadas:
- Subconsulta correlacionada
- NOT EXISTS
- LOWER
- TO_CHAR
- NVL2
- ORDER BY

Resultado observado:
40 alunos sem matricula, entre 100 cadastrados (40%).

Banco de dados: Oracle Database
*/

SELECT
    A.ID_ALUNO,
    A.NM_ALUNO,
    LOWER(A.DS_EMAIL) AS EMAIL_PADRONIZADO,
    TO_CHAR(A.DT_CADASTRO, 'DD/MM/YYYY') AS DATA_CADASTRO,
    NVL2(
        A.NR_TELEFONE,
        'Telefone disponível',
        'Telefone não informado'
    ) AS STATUS_TELEFONE
FROM T_EXE_ALUNO A
WHERE NOT EXISTS (
    SELECT 1
    FROM T_EXE_MATRICULA M
    WHERE M.ID_ALUNO = A.ID_ALUNO
)
ORDER BY A.NM_ALUNO;
