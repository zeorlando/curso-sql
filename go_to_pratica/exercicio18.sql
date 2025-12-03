-- Qual o valor médio de pontos positivos por dia?

SELECT sum(QtdePontos) AS totalPontos,
       count(DISTINCT substr(DtCriacao, 1, 10)) AS diasDistintos,
       sum(QtdePontos) / count(DISTINCT substr(DtCriacao, 1, 10)) AS avgPontosDia

FROM transacoes

WHERE QtdePontos > 0

