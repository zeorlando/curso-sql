SELECT idCliente,

       QtdePontos,
       QtdePontos + 10 AS QtdePontosPlus10,
       QtdePontos * 2 AS QtdePontosDouble,

       DtCriacao,

       substr(DtCriacao, 1, 19) AS dtCriacaoStr,

       strftime('%w',datetime(substr(DtCriacao, 1, 19))) AS diaSemana

FROM clientes