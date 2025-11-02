SELECT * FROM clientes;

SELECT nome, data_nascimento FROM clientes;

SELECT 
	nome,
	data_nascimento AS "Data de nascimento"
FROM clientes;

SELECT 'CPF: ' || cpf || ' RG: ' || rg AS "CPF e RG" FROM clientes;

SELECT * FROM clientes LIMIT 5;

SELECT nome, data_nascimento FROM clientes
WHERE data_nascimento > '2000-01-01'; -- Filtra somente os clientes que nasceram depois dessa data

SELECT nome FROM clientes
WHERE nome LIKE 'C%';

SELECT nome FROM clientes
WHERE nome LIKE '%c%'; -- Clientes que possuem a letra C no meio do nome

SELECT nome, data_nascimento FROM clientes
WHERE data_nascimento BETWEEN '1990-01-01' AND '1998-01-01';

SELECT nome, rg FROM clientes
WHERE rg IS NULL;

SELECT nome FROM clientes
ORDER BY nome ASC;

SELECT nome FROM clientes
ORDER BY nome DESC;