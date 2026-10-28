# 🗄️ Cadastro de Alunos e Cursos — SQL

> Script SQL que cria e popula duas tabelas, `Alunos` e `Cursos`, para praticar modelagem, inserção e consulta de dados.

![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-003B57?style=flat-square&logo=sqlite&logoColor=white)
![Licença](https://img.shields.io/badge/licença-MIT-blue?style=flat-square)

Exercício de banco de dados do curso de **Análise e Desenvolvimento de Sistemas (UDF)**, 2026.

---

## 📌 Visão geral

O script simula a base de uma instituição de ensino com:

- **Alunos:** 10 registros com nome, idade e cidade (regiões do DF e entorno)
- **Cursos:** 10 registros com nome, duração em anos e modalidade (Presencial ou EAD)

No final, duas consultas `SELECT ... LIMIT 2` mostram os primeiros registros de cada tabela.

---

## 🧱 Modelo das tabelas

| Tabela | Coluna | Tipo | Restrição |
| --- | --- | --- | --- |
| Alunos | id | INTEGER | PRIMARY KEY |
| Alunos | nome | TEXT | NOT NULL |
| Alunos | idade | INTEGER | NOT NULL |
| Alunos | cidade | TEXT | NOT NULL |
| Cursos | id | INTEGER | PRIMARY KEY |
| Cursos | nome | TEXT | NOT NULL |
| Cursos | duracao | INTEGER | NOT NULL (anos) |
| Cursos | modalidade | TEXT | NOT NULL |

---

## ▶️ Como executar

### Opção 1: online, sem instalar nada
1. Acesse [onecompiler.com/sqlite](https://onecompiler.com/sqlite)
2. Cole o conteúdo de `alunos-cursos.sql`
3. Clique em **Run**

### Opção 2: SQLite no computador

```bash
git clone https://github.com/anaqueiroz08/cadastro-alunos-cursos-sql.git
cd cadastro-alunos-cursos-sql
sqlite3 escola.db < alunos-cursos.sql
```

---

## 🖼 Exemplo de saída

```
SELECT * FROM Alunos LIMIT 2;
id | nome  | idade | cidade
1  | Ana   | 20    | Brasilia
2  | Bruno | 22    | Goiania

SELECT * FROM Cursos LIMIT 2;
id | nome          | duracao | modalidade
1  | Administracao | 4       | Presencial
2  | Direito       | 5       | Presencial
```

### Outras consultas para testar

```sql
-- Alunos de Brasília
SELECT nome, idade FROM Alunos WHERE cidade = 'Brasilia';

-- Cursos EAD
SELECT nome FROM Cursos WHERE modalidade = 'EAD';

-- Média de idade dos alunos
SELECT AVG(idade) AS media_idade FROM Alunos;
```

---

## 🚧 Próximas melhorias

- Criar uma tabela `Matriculas` ligando alunos a cursos com chave estrangeira
- Padronizar os valores de `modalidade` (hoje há "Presencial" e "PRESENCIAL")

---

## 👩‍💻 Autora

**Ana Caroline Santos Queiroz** · [GitHub](https://github.com/anaqueiroz08) · [LinkedIn](https://www.linkedin.com/in/anaqueiroz04/)

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE).
