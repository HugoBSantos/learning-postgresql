-- IMPLEMENTANDO CHAVES ESTRANGEIRAS
-- Profissão
ALTER TABLE clientes
RENAME COLUMN profissao TO id_profissao;

ALTER TABLE clientes
DROP id_profissao;

ALTER TABLE clientes
ADD id_profissao INTEGER;

ALTER TABLE clientes
ADD CONSTRAINT
	fk_cln_idprofissao FOREIGN KEY (id_profissao)
	REFERENCES profissoes (id);

UPDATE clientes
SET id_profissao = 1
WHERE id IN (1,9,10,12,15,17);

UPDATE clientes
SET id_profissao = 2
WHERE id = 2;

UPDATE clientes
SET id_profissao = 3
WHERE id = 3;

UPDATE clientes
SET id_profissao = 4
WHERE id IN (4, 5);

UPDATE clientes
SET id_profissao = 5
WHERE id IN (6,7,8,13);



-- Nacionalidade
ALTER TABLE clientes
DROP nacionalidade;

ALTER TABLE clientes
ADD id_nacionalidade INTEGER;

ALTER TABLE clientes
ADD CONSTRAINT
	fk_cln_idnacionalidade FOREIGN KEY (id_nacionalidade)
	REFERENCES nacionalidades (id);

UPDATE clientes
SET id_nacionalidade = 1
WHERE id IN (1,2,3,4,6,10,11,14);

UPDATE clientes
SET id_nacionalidade = 2
WHERE id IN (5,7);

UPDATE clientes
SET id_nacionalidade = 3
WHERE id = 8;

UPDATE clientes
SET id_nacionalidade = 4
WHERE id IN (9,13);



-- Complemento
ALTER TABLE clientes
DROP complemento;

ALTER TABLE clientes
ADD id_complemento INTEGER;

ALTER TABLE clientes
ADD CONSTRAINT
	fk_cln_idcomplemento FOREIGN KEY (id_complemento)
	REFERENCES complementos (id);

UPDATE clientes
SET id_complemento = 1
WHERE id IN (1,4,9,13);

UPDATE clientes
SET id_complemento = 2
WHERE id IN (2,3,7);