CREATE TABLE IF NOT EXISTS fornecedores (
	id INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,

	CONSTRAINT pk_fnc_id PRIMARY KEY (id),
	CONSTRAINT un_fnc_nome UNIQUE (nome)
);

INSERT INTO fornecedores (id, nome)
VALUES (1, 'Cap. Computadores');

INSERT INTO fornecedores (id, nome)
VALUES (2, 'AA. Computadores');

INSERT INTO fornecedores (id, nome)
VALUES (3, 'BB. Máquinas');