/*
==================================================
Project 01 - Basic SQL Queries
Exercises 01–04

Author: Gabriela Favaretto
Institution: Faculdade Infnet
Database: SQLite
==================================================
*/

-- ==================================================
-- Exercise 01
-- Display all records from the products table.
-- ==================================================

SELECT *
FROM produtos;


-- ==================================================
-- Exercise 02
-- Display the name and unit price of peripherals with stock greater than five.
-- ==================================================

SELECT
    nome,
    preco_unitario
FROM produtos
WHERE categoria = 'Periféricos'
  AND estoque > 5;


-- ==================================================
-- Exercise 03
-- Display all products in the Peripherals category.
-- ==================================================

SELECT *
FROM produtos
WHERE categoria = 'Periféricos';


-- ==================================================
-- Exercise 04
-- Display products priced above 500 with stock below 10, excluding peripherals.
-- ==================================================

SELECT
    nome,
    categoria,
    estoque
FROM produtos
WHERE preco_unitario > 500
  AND estoque < 10
  AND categoria <> 'Periféricos';
