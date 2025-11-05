CREATE TABLE IF NOT EXISTS vendedores (
	id INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,

	CONSTRAINT pk_vdd_id PRIMARY KEY (id),
	CONSTRAINT un_vdd_nome UNIQUE (nome)
);

INSERT INTO vendedores (id, nome)
VALUES (1, 'André');

INSERT INTO vendedores (id, nome)
VALUES (2, 'Alisson');

INSERT INTO vendedores (id, nome)
VALUES (3, 'José');

INSERT INTO vendedores (id, nome)
VALUES (4, 'Ailton');

INSERT INTO vendedores (id, nome)
VALUES (5, 'Maria');

INSERT INTO vendedores (id, nome)
VALUES (6, 'Suelem');

INSERT INTO vendedores (id, nome)
VALUES (7, 'Aline');

INSERT INTO vendedores (id, nome)
VALUES (8, 'Silvana');