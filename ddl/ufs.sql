CREATE TABLE IF NOT EXISTS ufs (
	id INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,
	sigla CHAR(2) NOT NULL,

	CONSTRAINT pk_ufd_id PRIMARY KEY (id),
	CONSTRAINT un_ufd_nome UNIQUE (nome),
	CONSTRAINT un_ufd_sigla UNIQUE (sigla)
);

INSERT INTO ufs (id, nome, sigla)
VALUES (1, 'São Paulo', 'SP');

INSERT INTO ufs (id, nome, sigla)
VALUES (2, 'Rio Grande do Sul', 'RS');

INSERT INTO ufs (id, nome, sigla)
VALUES (3, 'Santa Catarina', 'SC');

INSERT INTO ufs (id, nome, sigla)
VALUES (4, 'Paraná', 'PR');

INSERT INTO ufs (id, nome, sigla)
VALUES (5, 'Minas Gerais', 'MG');

INSERT INTO ufs (id, nome, sigla)
VALUES (6, 'Rio de Janeiro', 'RJ');