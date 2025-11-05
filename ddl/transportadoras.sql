CREATE TABLE IF NOT EXISTS transportadoras (
	id INTEGER NOT NULL,
	id_municipio INTEGER,
	nome VARCHAR(50) NOT NULL,
	logradouro VARCHAR(50),
	numero VARCHAR(10),

	CONSTRAINT pk_trp_id PRIMARY KEY (id),
	CONSTRAINT fk_trp_idmunicipio FOREIGN KEY (id_municipio) REFERENCES municipios (id),
	CONSTRAINT un_trp_nome UNIQUE (nome)
);

INSERT INTO transportadoras
	(id, id_municipio, nome, logradouro, numero)
VALUES
	(1, 3, 'BS. Transportes', 'Rua das Limas', '01');
	
INSERT INTO transportadoras
	(id, id_municipio, nome, logradouro, numero)
VALUES
	(2, 8, 'União Transportes', null, null);