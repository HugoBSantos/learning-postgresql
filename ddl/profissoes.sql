CREATE TABLE IF NOT EXISTS profissoes (
	id INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,

	CONSTRAINT pk_prf_id PRIMARY KEY (id),
	CONSTRAINT un_prf_nome UNIQUE (nome)
);

INSERT INTO profissoes (id, nome)
VALUES (1, 'Estudante');

INSERT INTO profissoes (id, nome)
VALUES (2, 'Engenheiro');

INSERT INTO profissoes (id, nome)
VALUES (3, 'Pedreiro');

INSERT INTO profissoes (id, nome)
VALUES (4, 'Jornalista');

INSERT INTO profissoes (id, nome)
VALUES (5, 'Professor');