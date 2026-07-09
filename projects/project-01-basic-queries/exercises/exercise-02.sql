-- Exercise 02
-- Display the name and unit price of peripherals with stock greater than five.

SELECT
    nome,
    preco_unitario
FROM produtos
WHERE categoria = 'Periféricos'
  AND estoque > 5;
