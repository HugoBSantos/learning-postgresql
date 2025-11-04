-- 1. Insira os dados abaixo na tabela de clientes
INSERT INTO clientes
	(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES
	(16, 'Maicon', '12349596421', '1234', '1965-10-10', 'F', 'Empresário', null,
	null, null, null, null, 'Florianópolis', 'PR');

INSERT INTO clientes
	(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES
	(17, 'Getúlio', null, '4631', null, 'F', 'Estudante', 'Brasileira',
	'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC');

INSERT INTO clientes
	(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES
	(18, 'Sandra', null, null, null, 'M', 'Professor', 'Italiana',
	null, '12', 'Bloco A', null, null, null);

-- 2. Altere os dados do cliente Maicon
-- a. O CPF para 45390569432
-- b. O gênero para M
-- c. A nacionalidade para Brasileira
-- d. O UF para SC
UPDATE clientes
SET
	cpf = '45390569432',
	genero = 'M',
	nacionalidade = 'Brasileira',
	uf = 'SC'
WHERE id = 16;

-- 3. Altere os dados do cliente Getúlio
-- a. A data de nascimento para 01/04/1978
-- b. O gênero para M
UPDATE clientes
SET
	data_nascimento = '1978-04-01',
	genero = 'M'
WHERE id = 17;

-- 4. Altere os dados da cliente Sandra
-- a. O gênero para F
-- b. A profissão para Professora
-- c. O número para 123
UPDATE clientes
SET
	genero = 'F',
	profissao = 'Professora',
	numero = '123'
WHERE id = 18;

-- 5. Apague o cliente Maicon
DELETE FROM clientes
WHERE id = 16;

-- 6. Apague a cliente Sandra
DELETE FROM clientes
WHERE id = 18;