/*
Intervalos

de 0 a 500       -> Ponei
de 501 a 1000    -> Ponei Premium
de 1001 a 5000   -> Mago Aprendiz
de 5001 a 10000  -> Mago Mestre
+ 10001          -> Mago Supremo
*/

SELECT idCliente,
       QtdePontos,
       CASE
            WHEN QtdePontos <= 500 THEN 'Ponei'
            WHEN QtdePontos <= 1000 THEN 'Ponei Premium'
            WHEN qtdePontos <= 5000 THEN 'Mago Aprendiz'
            WHEN QtdePontos <=10000 THEN 'Mago Mestre'
            ELSE 'Mago Supremo'
       END AS NomeGrupo

FROM clientes

ORDER BY QtdePontos DESC