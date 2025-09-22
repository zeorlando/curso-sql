-- selecione produtos que contém 'churn' no nome

SELECT *

FROM produtos

/*
pode usar também o IN

WHERE DescNomeProduto IN ('Churn_10pp','Churn_2pp','Churn_5pp')

obs: 
- no caso do LIKE o '%' é um coringa, ele ignora, no caso abaixo,
tudo que vem antes ou depois de churn
- o LIKE é muito custoso
*/

WHERE DescNomeProduto LIKE 'churn%'