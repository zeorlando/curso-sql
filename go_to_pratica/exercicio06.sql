/*
Lista de pedidos realizados no fim de semana
*/

SELECT IdTransacao,
       IdCliente,
       DtCriacao,

       substr(DtCriacao, 1, 19) AS dtCriacaoStr,
       strftime('%w',datetime(substr(DtCriacao, 1, 19))) AS diaSemana 

FROM transacoes

WHERE diaSemana IN ('0', '6')