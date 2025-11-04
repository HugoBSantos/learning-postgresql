CREATE TABLE IF NOT EXISTS nacionalidades (
	id INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,

	CONSTRAINT pk_ncn_id PRIMARY KEY (id),
	CONSTRAINT un_ncn_nome UNIQUE (nome)
);

INSERT INTO nacionalidades (id, nome)
VALUES (1, 'Brasileira');

INSERT INTO nacionalidades (id, nome)
VALUES (2, 'Italiana');

INSERT INTO nacionalidades (id, nome)
VALUES (3, 'Norte-Americana');

INSERT INTO nacionalidades (id, nome)
VALUES (4, 'Alemã');