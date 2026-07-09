-- Exercise 04
-- Display products priced above 500 with stock below 10, excluding peripherals.

SELECT
    nome,
    categoria,
    estoque
FROM produtos
WHERE preco_unitario > 500
  AND estoque < 10
  AND categoria <> 'Periféricos';
