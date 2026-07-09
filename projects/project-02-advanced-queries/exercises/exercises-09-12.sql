/*
==================================================
SQL Fundamentals
Project 02 – Advanced SQL Queries
Exercises 09–12

Author: Gabriela Valois
Institution: Faculdade Infnet
Database: SQLite
==================================================
*/

-- ==================================================
-- Exercise 09
-- Display the name, city and state of active employees.
-- ==================================================

SELECT
    nome_funcionario,
    cidade,
    estado
FROM funcionarios
WHERE status_ativo = 'SIM';


-- ==================================================
-- Exercise 10
-- Display the name, salary, age and state of active
-- employees older than 25 years, earning more than
-- 4000 and located in SP, RJ or MG.
-- ==================================================

SELECT
    nome_funcionario,
    salario,
    idade,
    estado
FROM funcionarios
WHERE idade > 25
  AND salario > 4000
  AND status_ativo = 'SIM'
  AND estado IN ('SP', 'RJ', 'MG')
ORDER BY idade DESC;


-- ==================================================
-- Exercise 11
-- Display the employee name, state and salary,
-- including all employees from SP and employees from
-- RJ or MG with salary greater than 3000.
-- ==================================================

SELECT
    nome_funcionario,
    estado,
    salario
FROM funcionarios
WHERE estado = 'SP'
   OR (estado IN ('RJ', 'MG') AND salario > 3000)
ORDER BY estado DESC,
         nome_funcionario ASC;


-- ==================================================
-- Exercise 12
-- Display statistics by state for active employees
-- aged 18 or older in SP, RJ, MG and PR.
-- ==================================================

SELECT
    estado,
    COUNT(*) AS quantidade_funcionarios,
    COUNT(DISTINCT setor) AS quantidade_setores,
    MIN(salario) AS menor_salario,
    MAX(salario) AS maior_salario
FROM funcionarios
WHERE status_ativo = 'SIM'
  AND idade >= 18
  AND estado IN ('SP', 'RJ', 'MG', 'PR')
GROUP BY estado
HAVING COUNT(*) > 2
ORDER BY COUNT(*) DESC;
