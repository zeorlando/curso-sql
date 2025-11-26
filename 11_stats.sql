SELECT avg(qtdePontos) AS mediaCarteira,
       1. * sum(qtdePontos) / count(IdCliente) AS mediaRoots,
       min(qtdePontos) as minCarteira,
       max(qtdePontos) as maxCarteira,
       sum(flTwitch)

FROM clientes