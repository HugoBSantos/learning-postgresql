CREATE TABLE IF NOT EXISTS bairros (
	id INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,

	CONSTRAINT pk_brr_id PRIMARY KEY (id),
	CONSTRAINT un_brr_nome UNIQUE (nome)
);

INSERT INTO bairros (id, nome)
VALUES (1, 'Centro');

INSERT INTO bairros (id, nome)
VALUES (2, 'São Pedro');

INSERT INTO bairros (id, nome)
VALUES (3, 'Santa Rosa');

INSERT INTO bairros (id, nome)
VALUES (4, 'Cidade Nova');