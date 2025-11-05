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
SET
	id_profissao = 1
WHERE id IN (1, 9, 10, 12, 15, 17);

UPDATE clientes
SET
	id_profissao = 2
WHERE id = 2;

UPDATE clientes
SET
	id_profissao = 3
WHERE id = 3;

UPDATE clientes
SET
	id_profissao = 4
WHERE id IN (4, 5);

UPDATE clientes
SET
	id_profissao = 5
WHERE id IN (6, 7, 8, 13);