# EDUTECH BRASIL | SQL ANALYTICS

### Análise de Indicadores Educacionais com Oracle SQL

Projeto acadêmico desenvolvido durante a graduação em **Data Science na FIAP**, com foco na aplicação prática de SQL para análise de dados educacionais.

## Objetivo

Desenvolver consultas SQL para explorar informações de cursos, alunos e matrículas da plataforma fictícia EduTech Brasil, utilizando subconsultas e funções avançadas do Oracle Database.

## Tecnologias

- Oracle Database
- Oracle SQL Developer
- SQL
- Git e GitHub
- Visual Studio Code

## Desafios do Projeto

| Desafio | Objetivo | Status |
|---|---|---|
| 01 | Identificar cursos com preços acima da média geral | Concluído |
| 02 | Identificar alunos sem matrícula | Concluído |
| 03 | Identificar cursos acima da média de sua categoria | Pendente |

## Principais Resultados

**Desafio 01 — Análise de preços dos cursos**

- Preço médio geral: R$ 245,90
- Cursos acima da média: 5 de 10
- Curso com maior diferença: Fundamentos de Machine Learning
- Diferença em relação à média: R$ 104,00

### Desafio 02 — Alunos sem matrícula

**Objetivo:** identificar alunos cadastrados na plataforma EduTech Brasil que ainda não possuem matrícula em nenhum curso.

**Resultados obtidos:**
- Total de alunos cadastrados: 100
- Alunos sem matrícula: 40
- Percentual sem matrícula: 40%

**Técnicas SQL utilizadas:**
- `NOT EXISTS` — identificação de alunos sem matrícula.
- `LOWER()` — padronização dos e-mails.
- `TO_CHAR()` — formatação das datas de cadastro.
- `NVL2()` — identificação da disponibilidade de telefone.
- `ORDER BY` — ordenação alfabética dos alunos.

**Interpretação:** 40% dos alunos cadastrados não possuem registros de matrícula. Esse indicador pode apoiar análises de conversão e ações de engajamento.

**Código SQL:** `sql/02_alunos_sem_matricula.sql`

**Evidências:**
- `evidencias/04_alunos_sem_matricula_not_exists.png`
- `evidencias/05_desafio2_resultado_final.png`

## Estrutura do Projeto

- `sql/` — Consultas SQL desenvolvidas.
- `docs/` — Documentação e interpretação dos resultados.
- `evidencias/` — Capturas de tela das consultas executadas.
- `database/` — Pasta reservada para materiais de estruturação do banco, quando apropriado.

## Contexto Acadêmico

**Instituição:** FIAP  
**Curso:** Data Science  
**Conteúdo:** Fase 06 — Capítulo 03: SQL Profissional, Subconsultas e Funções Avançadas

---

Projeto em desenvolvimento, com atualizações conforme a conclusão dos desafios.