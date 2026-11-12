# EDUTECH BRASIL — ANÁLISE DE INDICADORES

## Visão geral

Este documento apresenta os resultados das análises realizadas no projeto EduTech Brasil, desenvolvido durante os estudos de Data Science na FIAP.

As consultas foram executadas no Oracle Database, utilizando SQL para transformar dados educacionais em indicadores de negócio.

---

## Desafio 01 — Cursos acima da média geral

### Objetivo

Identificar os cursos com preços superiores à média geral da plataforma e calcular a diferença entre cada preço e essa média.

### Metodologia

Foi utilizada a função `AVG()` para calcular a média dos preços dos cursos, combinada com subconsultas, `ROUND()` e `ORDER BY`.

### Resultados

| Indicador | Resultado |
|---|---|
| Total de cursos | 10 |
| Preço médio geral | R$ 245,90 |
| Cursos acima da média | 5 |
| Percentual de cursos acima da média | 50% |

### Cursos identificados

| Curso | Preço | Diferença da média |
|---|---:|---:|
| Fundamentos de Machine Learning | R$ 349,90 | R$ 104,00 |
| IA Generativa para Educação | R$ 329,90 | R$ 84,00 |
| Python para Análise de Dados | R$ 299,90 | R$ 54,00 |
| Power BI do Zero ao Dashboard | R$ 279,90 | R$ 34,00 |
| Modelagem de Dados na Prática | R$ 249,90 | R$ 4,00 |

### Interpretação de negócio

Metade dos cursos possui preços superiores à média geral.

O curso Fundamentos de Machine Learning apresenta a maior diferença positiva, custando R$ 104,00 acima da média.

Essas informações podem apoiar análises de posicionamento de preços e composição do catálogo.

### Consulta e evidências

**SQL:** `sql/01_cursos_acima_media_geral.sql`

**Evidências:**
- `evidencias/01_media_geral_cursos.png`
- `evidencias/02_cursos_acima_media.png`
- `evidencias/03_desafio1_resultado_final.png`

---

## Desafio 02 — Alunos sem matrícula

### Objetivo

Identificar alunos cadastrados na plataforma que ainda não possuem registros de matrícula.

### Metodologia

Foi utilizada uma subconsulta correlacionada com `NOT EXISTS`, relacionando as tabelas `T_EXE_ALUNO` e `T_EXE_MATRICULA` pelo campo `ID_ALUNO`.

Também foram aplicadas as funções:

- `LOWER()` para padronizar e-mails.
- `TO_CHAR()` para formatar datas de cadastro.
- `NVL2()` para identificar a disponibilidade de telefone.
- `ORDER BY` para ordenar os resultados alfabeticamente.

### Resultados

| Indicador | Resultado |
|---|---|
| Total de alunos cadastrados | 100 |
| Alunos sem matrícula | 40 |
| Percentual sem matrícula | 40% |
| Alunos com pelo menos uma matrícula | 60 |

### Interpretação de negócio

Dos 100 alunos cadastrados, 40 não possuem registros de matrícula.

Esse resultado indica uma oportunidade de investigar a conversão de cadastros em matrículas.

Entretanto, a ausência de matrícula não permite identificar, isoladamente, os motivos pelos quais esses alunos ainda não se matricularam.

### Possíveis aplicações

- Monitoramento da conversão de alunos cadastrados.
- Identificação de oportunidades de engajamento.
- Desenvolvimento de indicadores em dashboards.
- Acompanhamento da evolução das matrículas.

### Consulta e evidências

**SQL:** `sql/02_alunos_sem_matricula.sql`

**Evidências:**
- `evidencias/04_alunos_sem_matricula_not_exists.png`
- `evidencias/05_desafio2_resultado_final.png`

---

## Conclusão parcial

Os dois primeiros desafios demonstram a aplicação de subconsultas e funções SQL na construção de indicadores educacionais.

As análises permitem examinar a distribuição de preços dos cursos e identificar alunos que ainda não possuem matrículas.

O projeto continuará com o Desafio 03, dedicado à comparação dos preços dos cursos com a média de suas respectivas categorias.