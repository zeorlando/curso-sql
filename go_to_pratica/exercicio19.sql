-- Qual dia da semana tem mais pedido em 2025?

SELECT strftime('%w', substr(DtCriacao, 1, 10)) AS diaSemana,
       count(DISTINCT IdTransacao) AS qtdTransacao

FROM transacoes

WHERE DtCriacao >= '2025-01-01' AND
DtCriacao < '2026-01-01'

GROUP BY 1
