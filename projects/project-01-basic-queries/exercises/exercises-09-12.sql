/*
==================================================
SQL Fundamentals
Project 01 – Basic SQL Queries
Exercises 09–12

Author: Gabriela Favaretto
Institution: Faculdade Infnet
Database: SQLite
==================================================
*/

-- ==================================================
-- Exercise 09
-- Display all orders with a total value greater than
-- 1000 that are either shipped or being processed.
-- ==================================================

SELECT *
FROM pedidos
WHERE valor_total > 1000
  AND (status = 'ENVIADO' OR status = 'PROCESSANDO');


-- ==================================================
-- Exercise 10
-- Display the order number and total value for
-- delivered orders with a total value above 300.
-- ==================================================

SELECT
    num_pedido,
    valor_total
FROM pedidos
WHERE status = 'ENTREGUE'
  AND valor_total > 300.00;


-- ==================================================
-- Exercise 11
-- Display all orders that are not canceled and
-- either have a total value of at least 300 or were
-- placed after February 1, 2024.
-- ==================================================

SELECT *
FROM pedidos
WHERE status <> 'CANCELADO'
  AND (
        valor_total >= 300.00
        OR data_pedido > '2024-02-01'
      );


-- ==================================================
-- Exercise 12
-- Display all orders placed on or after
-- January 20, 2024, with a total value below 200
-- or currently being processed.
-- ==================================================

SELECT *
FROM pedidos
WHERE data_pedido >= '2024-01-20'
  AND (
        valor_total < 200.00
        OR status = 'PROCESSANDO'
      );
