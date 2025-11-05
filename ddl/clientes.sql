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

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (1,'Manoel', '88828383821','32323','2001-01-30','M','Estudante', 'Brasileira', 'Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto Uniao','SC');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (2,'Geraldo', '12343299929','56565','1987-01-04','M','Engenheiro', 'Brasileira', 'Rua das Limas','200','Ap','Centro','Poro Uniao','SC');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (3,'Carlos','87732323227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apart.','Cto.','Canoinhas','SC');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','São Pedro','General Carneiro','PR');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (5,'Amanda','99982838828','28382','1991-03-04','F','Jorn.','Italiana','Av. Central','100',null, 'São Pedro','General Carneiro','PR');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (6, 'Ângelo', '99982828181','12323','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300',null, 'Ctr.','São Paulo','SP');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (7,'Anderson',null,null,null,'M','Prof.','Italiano', 'Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (8,'Camila','9998282828',null,'2001-10-10','F','Professora','Norte-Americana','Rua Central','4333',null,'Centro','Porto Alegre','RS');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (10, 'Fabricio','8828282828','32323',null,'M','Estudante','Brasileiro',null,null,null,null, 'PU','SC');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto União','SC');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (12,'Gilmar','88881818181','888','2000-02-10','M','Estud.',null,'Rua das Laranjeiras','200',null,'C. Nova','Canoinhas','SC');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (13,'Diego','1010191919','111939',null,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileiro',null,null, null,null,'União da Vitória','PR');

INSERT INTO clientes(id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
VALUES (15,'Jessica',null,null,null,'F','Estudante', null, null, null, null, null, 'União da Vitória','PR');

ALTER TABLE clientes
RENAME COLUMN profissao TO id_profissao;

ALTER TABLE clientes
DROP id_profissao;

ALTER TABLE clientes
ADD id_profissao INTEGER;

ALTER TABLE clientes
ADD CONSTRAINT fk_cln_idprofissao FOREIGN KEY (id_profissao) REFERENCES profissoes (id);

UPDATE clientes
SET
	id_profissao = 1
WHERE id IN (1, 9, 10, 12, 15, 17);

UPDATE clientes
SET
	id_profissao = 2
WHERE id = 2;

UPDATE clientes
SET
	id_profissao = 3
WHERE id = 3;

UPDATE clientes
SET
	id_profissao = 4
WHERE id IN (4, 5);

UPDATE clientes
SET
	id_profissao = 5
WHERE id IN (6, 7, 8, 13);