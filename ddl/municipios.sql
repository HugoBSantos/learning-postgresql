CREATE TABLE IF NOT EXISTS municipios (
	id INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,
	id_uf INTEGER NOT NULL,

	CONSTRAINT pk_mnc_id PRIMARY KEY (id),
	CONSTRAINT fk_mnc_iduf FOREIGN KEY (id_uf) REFERENCES ufs (id)
);

INSERT INTO municipios (id, nome, id_uf)
VALUES (1, 'Porto Alegre', 2);

INSERT INTO municipios (id, nome, id_uf)
VALUES (2, 'Porto União', 3);

INSERT INTO municipios (id, nome, id_uf)
VALUES (3, 'União da Vitória', 4);

INSERT INTO municipios (id, nome, id_uf)
VALUES (4, 'Curitiba', 4);

INSERT INTO municipios (id, nome, id_uf)
VALUES (5, 'General Carneiro', 4);

INSERT INTO municipios (id, nome, id_uf)
VALUES (6, 'Rio de Janeiro', 6);

INSERT INTO municipios (id, nome, id_uf)
VALUES (7, 'Canoinhas', 3);

INSERT INTO municipios (id, nome, id_uf)
VALUES (8, 'São Paulo', 1);