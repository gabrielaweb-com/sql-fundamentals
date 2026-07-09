/*
==================================================
SQL Fundamentals
Project 01 – Basic SQL Queries
Exercises 13–16

Author: Gabriela Favaretto
Institution: Faculdade Infnet
Database: SQLite
==================================================
*/

-- ==================================================
-- Exercise 13
-- Display the names and regions of salespeople who
-- achieved their sales target and are not from the
-- Southeast region.
-- ==================================================

SELECT
    nome_vendedor,
    regiao
FROM vendedores
WHERE meta_atingida = 'SIM'
  AND regiao <> 'Sudeste';


-- ==================================================
-- Exercise 14
-- Display the names and monthly sales of salespeople
-- from the Southeast region who achieved their sales
-- target and sold more than 40 units.
-- ==================================================

SELECT
    nome_vendedor,
    vendas_mes
FROM vendedores
WHERE regiao = 'Sudeste'
  AND meta_atingida = 'SIM'
  AND vendas_mes > 40;


-- ==================================================
-- Exercise 15
-- Display all salespeople whose monthly sales are
-- between 20 and 40 units.
-- ==================================================

SELECT *
FROM vendedores
WHERE vendas_mes > 20
  AND vendas_mes < 40;


-- ==================================================
-- Exercise 16
-- Display the names and regions of salespeople from
-- the South or North regions who achieved their sales
-- target.
-- ==================================================

SELECT
    nome_vendedor,
    regiao
FROM vendedores
WHERE (regiao = 'Sul' OR regiao = 'Norte')
  AND meta_atingida = 'SIM';
