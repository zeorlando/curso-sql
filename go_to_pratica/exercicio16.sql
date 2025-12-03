-- Qual cliente fez mais transações no ano de 2024?

SELECT IdCliente,
       count(DISTINCT IdTransacao) AS totalTransacoes

FROM transacoes

WHERE DtCriacao >= '2024-01-01' AND
DtCriacao <= '2024-12-01'

GROUP BY IdCliente

ORDER BY totalTransacoes DESC