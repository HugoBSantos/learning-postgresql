-- Exercícios – consultas simples

-- 1. O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente
SELECT nome, genero, profissao FROM clientes
ORDER BY nome DESC;

-- 2. Os clientes que tenham a letra “R” no nome
SELECT * FROM clientes
WHERE nome LIKE '%r%';

-- 3. Os clientes que o nome inicia com a letra “C”
SELECT * FROM clientes
WHERE nome LIKE 'C%';

-- 4. Os clientes que o nome termina com a letra “A”
SELECT * FROM clientes
WHERE nome LIKE '%a';

-- 5. Os clientes que moram no bairro “Centro”
SELECT * FROM clientes
WHERE bairro = 'Centro';

-- 6. Os clientes que moram em complementos que iniciam com a letra “A”
SELECT * FROM clientes
WHERE complemento LIKE 'A%';

-- 7. Somente os clientes do sexo feminino
SELECT * FROM clientes
WHERE genero = 'F';

-- 8. Os clientes que não informaram o CPF
SELECT * FROM clientes
WHERE cpf IS NULL;

-- 9. O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão
SELECT nome, profissao FROM clientes
ORDER BY profissao ASC;

-- 10. Os clientes de nacionalidade “Brasileira”
SELECT * FROM clientes
WHERE nacionalidade = 'Brasileira';

-- 11. Os clientes que informaram o número da residência
SELECT * FROM clientes
WHERE numero IS NOT NULL;

-- 12. Os clientes que moram em Santa Catarina
SELECT * FROM clientes
WHERE uf = 'SC';

-- 13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002
SELECT * FROM clientes
WHERE data_nascimento BETWEEN '2000-01-01' AND '2002-01-01';

-- 14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes
SELECT nome || ': ' ||
	logradouro || 
	', N° ' || numero ||
	', ' || complemento ||
	', ' || bairro ||
	', ' || municipio ||
	', ' || uf
	AS endereco
FROM clientes;
