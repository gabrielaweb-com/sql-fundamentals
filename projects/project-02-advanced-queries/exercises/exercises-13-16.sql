/*
==================================================
SQL Fundamentals
Project 02 – Advanced SQL Queries
Exercises 13–16

Author: Gabriela Favaretto
Institution: Faculdade Infnet
Database: SQLite
==================================================
*/

-- ==================================================
-- Exercise 13
-- Display all products available for sale.
-- ==================================================

SELECT *
FROM produtos_mercado
WHERE status_venda = 'Disponível';


-- ==================================================
-- Exercise 14
-- Display the product name, category, stock and sales
-- status for products that belong to the categories
-- "Alimentos" or "Bebidas" with stock below 50,
-- or products marked as unavailable.
-- ==================================================

SELECT
    nome_produto,
    categoria,
    estoque,
    status_venda
FROM produtos_mercado
WHERE (categoria IN ('Alimentos', 'Bebidas') AND estoque < 50)
   OR status_venda = 'Indisponível';


-- ==================================================
-- Exercise 15
-- Display the product name, price and sales status
-- for products that are available or on promotion,
-- ordered by price in descending order.
-- ==================================================

SELECT
    nome_produto,
    preco,
    status_venda
FROM produtos_mercado
WHERE status_venda IN ('Disponível', 'Promoção')
ORDER BY preco DESC;


-- ==================================================
-- Exercise 16
-- Display statistics by category for products priced
-- at least 20, with stock greater than 10 and sales
-- status "Disponível" or "Promoção".
-- ==================================================

SELECT
    categoria,
    COUNT(*) AS quantidade_produtos,
    AVG(preco) AS preco_medio,
    SUM(preco) AS soma_precos,
    MIN(preco) AS menor_preco,
    MAX(preco) AS maior_preco
FROM produtos_mercado
WHERE preco >= 20
  AND estoque > 10
  AND status_venda IN ('Disponível', 'Promoção')
GROUP BY categoria
HAVING COUNT(*) >= 3
ORDER BY AVG(preco) DESC;
