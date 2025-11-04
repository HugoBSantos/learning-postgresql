CREATE TABLE IF NOT EXISTS complementos (
	id INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,

	CONSTRAINT pk_cpl_id PRIMARY KEY (id),
	CONSTRAINT un_cpl_nome UNIQUE (nome)
);

INSERT INTO complementos (id, nome)
VALUES (1, 'Casa');

INSERT INTO complementos (id, nome)
VALUES (2, 'Apartamento');