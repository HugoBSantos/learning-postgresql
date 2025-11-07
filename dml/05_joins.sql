-- Exercícios – joins
-- 1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.
SELECT
	cln.nome,
	prf.nome AS profissao,
	ncn.nome AS nacionalidade,
	cln.logradouro,
	cln.numero,
	cmp.nome AS complemento,
	bairros.nome AS bairro,
	mnc.nome AS municipio,
	ufs.sigla AS uf
FROM clientes AS cln
LEFT JOIN profissoes AS prf
	ON cln.id_profissao = prf.id
LEFT JOIN nacionalidades AS ncn
	ON cln.id_nacionalidade = ncn.id
LEFT JOIN complementos AS cmp
	ON cln.id_complemento = cmp.id
LEFT JOIN bairros
	ON cln.id_bairro = bairros.id
LEFT JOIN municipios AS mnc
	ON cln.id_municipio = mnc.id
LEFT JOIN ufs
	ON mnc.id_uf = ufs.id;

-- 2. O nome do produto, o valor e o nome do fornecedor.
SELECT
	prd.nome AS produto,
	prd.valor,
	fnc.nome AS fornecedor
FROM produtos AS prd
LEFT JOIN fornecedores AS fnc
	ON prd.id_fornecedor = fnc.id;

-- 3. O nome da transportadora e o município.
SELECT
	trp.nome AS transportadora,
	mnc.nome AS municipio
FROM transportadoras AS trp
LEFT JOIN municipios AS mnc
	ON trp.id_municipio = mnc.id;

-- 4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.
SELECT
	pdd.data_pedido,
	pdd.valor,
	cln.nome AS cliente,
	trp.nome AS transportadora,
	vdd.nome AS vendedor
FROM pedidos AS pdd
LEFT JOIN clientes AS cln
	ON pdd.id_cliente = cln.id
LEFT JOIN transportadoras AS trp
	ON pdd.id_transportadora = trp.id
LEFT JOIN vendedores AS vdd
	ON pdd.id_vendedor = vdd.id;

-- 5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.
SELECT
	prd.nome AS produto,
	pdp.quantidade,
	pdp.valor_unitario
FROM pedido_produto AS pdp
LEFT JOIN produtos AS prd
	ON pdp.id_produto = prd.id;

-- 6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).
SELECT
	cln.nome AS cliente,
	pdd.data_pedido
FROM pedidos AS pdd
INNER JOIN clientes AS cln
	ON pdd.id_cliente = cln.id
ORDER BY cln.nome;

-- 7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).
SELECT
	cln.nome AS cliente,
	pdd.data_pedido
FROM clientes AS cln
LEFT JOIN pedidos AS pdd
	ON pdd.id_cliente = cln.id
ORDER BY cliente;

-- 8. O nome da cidade e a quantidade de clientes que moram naquela cidade.
SELECT
	mnc.nome AS municipio,
	COUNT(cln.id_municipio) AS quantidade_clientes
FROM municipios AS mnc
INNER JOIN clientes AS cln
	ON cln.id_municipio = mnc.id
GROUP BY municipio;

-- 9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.
SELECT
	fnc.nome AS fornecedor,
	COUNT(prd.id_fornecedor) AS quantidade_produtos
FROM fornecedores AS fnc
INNER JOIN produtos AS prd
	ON prd.id_fornecedor = fnc.id
GROUP BY fornecedor;

-- 10. O nome do cliente e o somatório do valor do pedido (agrupado por cliente).
SELECT
	cln.nome AS cliente,
	SUM(pdd.valor) AS valor_total
FROM clientes AS cln
INNER JOIN pedidos AS pdd
	ON pdd.id_cliente = cln.id
GROUP BY cliente;

-- 11. O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).
SELECT
	vdd.nome AS vendedor,
	SUM(pdd.valor) AS valor_total
FROM vendedores AS vdd
INNER JOIN pedidos AS pdd
	ON pdd.id_vendedor = vdd.id
GROUP BY vendedor;

-- 12. O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).
SELECT
	trp.nome AS transportadora,
	SUM(pdd.valor) AS valor_total
FROM transportadoras AS trp
INNER JOIN pedidos AS pdd
	ON pdd.id_transportadora = trp.id
GROUP BY transportadora;

-- 13. O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).
SELECT
	cln.nome AS cliente,
	COUNT(pdd.id_cliente) AS quantidade_pedidos
FROM clientes AS cln
LEFT JOIN pedidos AS pdd
	ON pdd.id_cliente = cln.id
GROUP BY cliente;

-- 14. O nome do produto e a quantidade vendida (agrupado por produto).
SELECT
	prd.nome AS produto,
	SUM(pdp.quantidade) AS quantidade_vendida
FROM produtos AS prd
LEFT JOIN pedido_produto AS pdp
	ON pdp.id_produto = prd.id
GROUP BY produto;

-- 15. A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).
SELECT
	pdd.data_pedido,
	SUM(pdp.valor_unitario) AS valor_total
FROM pedidos AS pdd
LEFT JOIN pedido_produto AS pdp
	ON pdp.id_pedido = pdd.id
GROUP BY pdd.data_pedido;

-- 16. A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
SELECT
	pdd.data_pedido,
	SUM(pdp.quantidade) AS quantidade_produtos
FROM pedidos AS pdd
LEFT JOIN pedido_produto AS pdp
	ON pdp.id_pedido = pdd.id
GROUP BY pdd.data_pedido;