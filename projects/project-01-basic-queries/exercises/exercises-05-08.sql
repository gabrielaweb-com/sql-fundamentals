/*
==================================================
Project 01 - Basic SQL Queries
Exercises 05–08

Author: Gabriela Favaretto
Institution: Faculdade Infnet
Database: SQLite
==================================================
*/

-- ==================================================
-- Exercise 05
-- Display the full name and city of customers from São Paulo.
-- ==================================================

SELECT
    nome_completo,
    cidade
FROM clientes
WHERE estado = 'SP';


-- ==================================================
-- Exercise 06
-- Display all customers from Paraná, Rio Grande do Sul,
-- or customers subscribed to the Gold plan.
-- ==================================================

SELECT *
FROM clientes
WHERE estado = 'PR'
   OR estado = 'RS'
   OR tipo_plano = 'Gold';


-- ==================================================
-- Exercise 07
-- Display the full name, city and state of customers
-- who are not subscribed to the Free plan and are not
-- from São Paulo.
-- ==================================================

SELECT
    nome_completo,
    cidade,
    estado
FROM clientes
WHERE tipo_plano <> 'Free'
  AND estado <> 'SP';


-- ==================================================
-- Exercise 08
-- Display the full name and state of customers
-- who are not subscribed to the Free plan.
-- ==================================================

SELECT
    nome_completo,
    estado
FROM clientes
WHERE tipo_plano <> 'Free';
