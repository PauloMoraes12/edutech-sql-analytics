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

## Desafio 03 — Cursos acima da média por categoria

### Objetivo

Identificar os cursos que possuem preços superiores à média de suas respectivas categorias, permitindo comparações entre cursos de um mesmo segmento.

### Metodologia

Foram utilizadas subconsultas correlacionadas para calcular a média dos preços dos cursos pertencentes à mesma categoria do curso analisado.

As principais técnicas SQL utilizadas foram:

- `AVG()` para calcular a média dos preços.
- Subconsultas correlacionadas para relacionar cada curso à sua categoria.
- `WHERE` para selecionar somente os cursos acima da média.
- `ROUND()` para arredondar os valores.
- `ORDER BY` para organizar os resultados.

### Resultados

| Curso | Categoria | Preço | Média da categoria | Diferença |
|---|---|---:|---:|---:|
| Power BI do Zero ao Dashboard | Dados | R$ 279,90 | R$ 243,23 | +R$ 36,67 |
| Modelagem de Dados na Prática | Dados | R$ 249,90 | R$ 243,23 | +R$ 6,67 |
| Fundamentos de Machine Learning | IA | R$ 349,90 | R$ 339,90 | +R$ 10,00 |
| LGPD e Ética no Uso de Dados | Negócios | R$ 219,90 | R$ 189,90 | +R$ 30,00 |
| Python para Análise de Dados | Programação | R$ 299,90 | R$ 239,90 | +R$ 60,00 |

### Interpretação de negócio

Dos 10 cursos cadastrados, cinco apresentam preços superiores à média de suas respectivas categorias.

O curso Python para Análise de Dados apresenta a maior diferença positiva, com preço R$ 60,00 acima da média de Programação.

Essa análise permite avaliar o posicionamento relativo dos preços dentro de cada categoria, complementando a comparação com a média geral realizada no Desafio 01.

### Limitações

Os preços não permitem determinar, isoladamente, a rentabilidade dos cursos. Para isso, seriam necessárias informações adicionais sobre custos, matrículas e receitas.

### Consulta e evidência

**SQL:** `sql/03_cursos_acima_media_categoria.sql`

**Evidência:**
- `evidencias/06_desafio3_resultado_final.png`

---

## Conclusão geral

Os três desafios demonstraram a aplicação de subconsultas, funções SQL e técnicas de análise de dados no Oracle Database.

O projeto permitiu identificar cursos acima da média geral de preços, alunos sem matrícula e cursos acima da média de suas respectivas categorias.

Os resultados mostram como consultas SQL podem transformar registros operacionais em indicadores úteis para análises comerciais e educacionais.

Além da construção das consultas, o projeto contempla documentação técnica, interpretação dos resultados, evidências de execução e versionamento no GitHub.