-- Exercícios views
-- 1. O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação,
-- o bairro, o CPF, o RG, a data de nascimento, o gênero (mostrar “Masculino” ou “Feminino”),
-- o logradouro, o número e as observações dos clientes.
CREATE OR REPLACE VIEW clientes_info AS
SELECT
	cln.nome,
	prf.nome AS profissao,
	ncn.nome AS nacionalidade,
	cmp.nome AS complemento,
	mnc.nome AS municipio,
	ufs.nome AS uf,
	brr.nome AS bairro,
	cpf,
	rg,
	data_nascimento,
	CASE genero
		WHEN 'M' THEN 'Masculino'
		WHEN 'F' THEN 'Feminino'
	END AS genero,
	logradouro,
	numero,
	observacoes
FROM clientes AS cln
LEFT JOIN profissoes AS prf
	ON cln.id_profissao = prf.id
LEFT JOIN nacionalidades AS ncn
	ON cln.id_nacionalidade = ncn.id
LEFT JOIN complementos AS cmp
	ON cln.id_complemento = cmp.id
LEFT JOIN municipios AS mnc
	ON cln.id_municipio = mnc.id
LEFT JOIN ufs
	ON mnc.id_uf = ufs.id
LEFT JOIN bairros AS brr
	ON cln.id_bairro = brr.id;

-- 2. O nome do município e o nome e a sigla da unidade da federação.
CREATE OR REPLACE VIEW municipios_info AS
SELECT
	mnc.nome AS municipio,
	ufs.nome AS uf,
	ufs.sigla
FROM municipios AS mnc
LEFT JOIN ufs
	ON mnc.id_uf = ufs.id;

-- 3. O nome do produto, o valor e o nome do fornecedor dos produtos.
CREATE OR REPLACE VIEW produtos_info AS
SELECT
	prd.nome AS produto,
	prd.valor,
	fnc.nome AS fornecedor
FROM produtos AS prd
LEFT JOIN fornecedores AS fnc
	ON prd.id_fornecedor = fnc.id;

-- 4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação
-- e a sigla da unidade de federação das transportadoras.
CREATE OR REPLACE VIEW transportadoras_info AS
SELECT
	trp.nome AS transportadora,
	trp.logradouro,
	trp.numero,
	ufs.nome AS uf,
	ufs.sigla AS sigla_uf
FROM transportadoras AS trp
LEFT JOIN municipios AS mnc
	ON trp.id_municipio = mnc.id
LEFT JOIN ufs
	ON mnc.id_uf = ufs.id;

-- 5. A data do pedido, o valor, o nome da transportadora, o nome do cliente
-- e o nome do vendedor dos pedidos.
CREATE OR REPLACE VIEW pedidos_info AS
SELECT
	pdd.data_pedido,
	pdd.valor,
	trp.nome AS transportadora,
	cln.nome AS cliente,
	vdd.nome AS vendedor
FROM pedidos AS pdd
LEFT JOIN transportadoras AS trp
	ON pdd.id_transportadora = trp.id
LEFT JOIN clientes AS cln
	ON pdd.id_cliente = cln.id
LEFT JOIN vendedores AS vdd
	ON pdd.id_vendedor = vdd.id;