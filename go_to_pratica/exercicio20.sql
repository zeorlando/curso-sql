-- Qual produto foi mais transacionado

SELECT IdProduto,
       sum(QtdeProduto)

FROM transacao_produto

GROUP BY IdProduto

ORDER BY sum(QtdeProduto) DESC

