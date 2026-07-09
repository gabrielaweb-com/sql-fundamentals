/*
==================================================
SQL Fundamentals
Project 02 – Advanced SQL Queries
Exercises 05–08

Author: Gabriela Valois
Institution: Faculdade Infnet
Database: SQLite
==================================================
*/

-- ==================================================
-- Exercise 05
-- Display the title, genre and age rating of movies
-- available in the catalog.
-- ==================================================

SELECT titulo, genero, classificacao
FROM filmes
WHERE disponivel_catalogo = 'SIM';


-- ==================================================
-- Exercise 06
-- Display the title, duration and average rating of
-- movies longer than 90 minutes, with rating below
-- 8.5 and available in the catalog.
-- ==================================================

SELECT titulo, duracao_min, nota_media
FROM filmes
WHERE duracao_min > 90
  AND nota_media < 8.5
  AND disponivel_catalogo = 'SIM';


-- ==================================================
-- Exercise 07
-- Display the title, genre and average rating of
-- Action, Drama and Science Fiction movies ordered
-- by average rating.
-- ==================================================

SELECT titulo, genero, nota_media
FROM filmes
WHERE genero IN ('Ação', 'Drama', 'Ficção Científica')
ORDER BY nota_media ASC;


-- ==================================================
-- Exercise 08
-- Display statistics by genre for movies available
-- in the catalog, with duration of at least
-- 80 minutes and age rating "Livre" or "12 anos".
-- ==================================================

SELECT genero,
       COUNT(*) AS quantidade_filmes,
       AVG(nota_media) AS nota_media,
       MIN(nota_media) AS menor_nota,
       MAX(nota_media) AS maior_nota
FROM filmes
WHERE disponivel_catalogo = 'SIM'
  AND duracao_min >= 80
  AND classificacao IN ('Livre', '12 anos')
GROUP BY genero
HAVING COUNT(*) > 1
ORDER BY AVG(nota_media) DESC;
