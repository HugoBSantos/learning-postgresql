CREATE TABLE IF NOT EXISTS clientes (
	id INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,
	cpf CHAR(11),
	rg VARCHAR(15),
	data_nascimento DATE,
	genero CHAR(1),
	profissao VARCHAR(30),
	nacionalidade VARCHAR(30),
	logradouro VARCHAR(30),
	numero VARCHAR(10),
	complemento VARCHAR(30),
	bairro VARCHAR(30),
	municipio VARCHAR(30),
	uf VARCHAR(30),
	observacoes TEXT,

	CONSTRAINT pk_cln_id PRIMARY KEY (id)
);

INSERT INTO clientes
	(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf, observacoes)
VALUES
	(1, 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileira',
	'Rua Joaquim Nabuco', '23', 'Casa', 'Cidade Nova', 'Porto Uniao', 'SC', '');

INSERT INTO clientes
	(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf, observacoes)
VALUES
	(2, 'Geraldo', '12343299929', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileira',
	'Rua das Limas', '200', 'Ap', 'Centro', 'Poro Uniao', 'SC', '');