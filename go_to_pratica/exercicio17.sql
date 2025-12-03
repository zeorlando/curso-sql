-- Quantos produtos são de RPG?

SELECT count(DescCategoriaProduto)

FROM produtos

WHERE DescCategoriaProduto = 'rpg';

SELECT DescCategoriaProduto,
       count(*)

FROM produtos

GROUP BY DescCategoriaProduto

ORDER BY count(*) DESC;
