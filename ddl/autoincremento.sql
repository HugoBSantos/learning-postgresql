-- IMPLEMENTANDO AUTOINCREMENTO
-- Bairro
SELECT MAX(id) + 1 FROM bairros;

CREATE SEQUENCE bairros_id_seq MINVALUE 5;

ALTER TABLE bairros
ALTER id
	SET DEFAULT nextval('bairros_id_seq');

ALTER SEQUENCE bairros_id_seq OWNED BY bairros.id;

-- Cliente
SELECT MAX(id) + 1 FROM clientes;

CREATE SEQUENCE clientes_id_seq MINVALUE 18;

ALTER TABLE clientes
ALTER id
	SET DEFAULT nextval('clientes_id_seq');

ALTER SEQUENCE clientes_id_seq OWNED BY clientes.id;

-- Complemento
SELECT MAX(id) + 1 FROM complementos;

CREATE SEQUENCE complementos_id_seq MINVALUE 3;

ALTER TABLE complementos
ALTER id
	SET DEFAULT nextval('complementos_id_seq');

ALTER SEQUENCE complementos_id_seq OWNED BY complementos.id;

-- Fornecedor
SELECT MAX(id) + 1 FROM fornecedores;

CREATE SEQUENCE fornecedores_id_seq MINVALUE 4;

ALTER TABLE fornecedores
ALTER id
	SET DEFAULT nextval('fornecedores_id_seq');

ALTER SEQUENCE fornecedores_id_seq OWNED BY fornecedores.id;

-- Município
SELECT MAX(id) + 1 FROM municipios;

CREATE SEQUENCE municipios_id_seq MINVALUE 9;

ALTER TABLE municipios
ALTER id
	SET DEFAULT nextval('municipios_id_seq');

ALTER SEQUENCE municipios_id_seq OWNED BY municipios.id;

-- Nacionalidade
SELECT MAX(id) + 1 FROM nacionalidades;

CREATE SEQUENCE nacionalidades_id_seq MINVALUE 5;

ALTER TABLE nacionalidades
ALTER id
	SET DEFAULT nextval('nacionalidades_id_seq');

ALTER SEQUENCE nacionalidades_id_seq OWNED BY nacionalidades.id;

-- Pedido
SELECT MAX(id) + 1 FROM pedidos;

CREATE SEQUENCE pedidos_id_seq MINVALUE 16;

ALTER TABLE pedidos
ALTER id
	SET DEFAULT nextval('pedidos_id_seq');

ALTER SEQUENCE pedidos_id_seq OWNED BY pedidos.id;

-- Profissão
SELECT MAX(id) + 1 FROM profissoes;

CREATE SEQUENCE profissoes_id_seq MINVALUE 6;

ALTER TABLE profissoes
ALTER id
	SET DEFAULT nextval('profissoes_id_seq');

ALTER SEQUENCE profissoes_id_seq OWNED BY profissoes.id;

-- Transportadora
SELECT MAX(id) + 1 FROM transportadoras;

CREATE SEQUENCE transportadoras_id_seq MINVALUE 3;

ALTER TABLE transportadoras
ALTER id
	SET DEFAULT nextval('transportadoras_id_seq');

ALTER SEQUENCE transportadoras_id_seq OWNED BY transportadoras.id;

-- UF
SELECT MAX(id) + 1 FROM ufs;

CREATE SEQUENCE ufs_id_seq MINVALUE 7;

ALTER TABLE ufs
ALTER id
	SET DEFAULT nextval('ufs_id_seq');

ALTER SEQUENCE ufs_id_seq OWNED BY ufs.id;

-- Vendedor
SELECT MAX(id) + 1 FROM vendedores;

CREATE SEQUENCE vendedores_id_seq MINVALUE 9;

ALTER TABLE vendedores
ALTER id
	SET DEFAULT nextval('vendedores_id_seq');

ALTER SEQUENCE vendedores_id_seq OWNED BY vendedores.id;