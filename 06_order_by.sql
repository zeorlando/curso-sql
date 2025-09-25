-- SELECT *

-- FROM clientes

-- ORDER BY qtdePontos DESC

-- LIMIT 10;

SELECT idCliente,
       qtdePontos,
       datetime(substr(DtCriacao, 1, 19)) AS Data

FROM clientes

ORDER BY Data ASC, qtdePontos DESC

LIMIT 10

