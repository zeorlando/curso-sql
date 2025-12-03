-- Quantos clientes tem e-mail cadastrado?

SELECT sum(flEmail)
FROM clientes;

SELECT count(*)
FROM clientes
WHERE flEmail = 1;