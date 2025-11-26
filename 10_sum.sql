SELECT sum(QtdePontos),
       sum(CASE 
            WHEN QtdePontos > 0 THEN QtdePontos
       END) AS qtdPontosPositivos,

       sum(CASE 
            WHEN QtdePontos < 0 THEN QtdePontos
       END) AS qtdPontosNegativos,

       count(CASE
             WHEN  QtdePontos < 0 THEN QtdePontos
       END) AS qtdTransacoesNegativas

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY QtdePontos