-- Exercícios - subconsultas
-- 1. O nome dos clientes que moram na mesma cidade do Manoel. Não deve ser mostrado o Manoel.
SELECT nome FROM clientes
WHERE id_municipio = (
	SELECT id_municipio FROM clientes
	WHERE nome = 'Manoel'
) AND nome <> 'Manoel';

-- 2. A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.
SELECT data_pedido, valor FROM pedidos
WHERE valor < (SELECT AVG(valor) FROM pedidos);

-- 3. A data, o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.
WITH quantidade_produtos AS (
	SELECT
		id_pedido,
		SUM(quantidade) AS qtd_produtos
	FROM pedido_produto
	GROUP BY id_pedido
	HAVING SUM(quantidade) >= 2
)
SELECT
	pdd.data_pedido,
	pdd.valor,
	cln.nome AS cliente,
	vdd.nome AS vendedor,
	qp.qtd_produtos
FROM pedidos AS pdd
LEFT JOIN clientes AS cln
	ON pdd.id_cliente = cln.id
LEFT JOIN vendedores AS vdd
	ON pdd.id_vendedor = vdd.id
INNER JOIN quantidade_produtos AS qp
	ON pdd.id = qp.id_pedido;

-- 4. O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.
SELECT nome FROM clientes
WHERE id_municipio = (
	SELECT id_municipio FROM transportadoras
	WHERE nome = 'BS. Transportes'
);

-- 5. O nome do cliente e o município dos clientes que estão
-- localizados no mesmo município de qualquer uma das transportadoras.
SELECT
	cln.nome AS cliente,
	mnc.nome AS municipio
FROM clientes AS cln
LEFT JOIN municipios AS mnc
	ON cln.id_municipio = mnc.id
WHERE cln.id_municipio IN (
	SELECT id_municipio FROM transportadoras
);

-- 6. Atualizar o valor do pedido em 5% para os pedidos que o somatório
-- do valor total dos produtos daquele pedido seja maior que a média do
-- valor total de todos os produtos de todos os pedidos.
UPDATE pedidos
SET valor = valor * 1.05
WHERE id IN (
	SELECT id_pedido FROM pedido_produto
	GROUP BY id_pedido
	HAVING SUM(valor_unitario) > (
		SELECT AVG(total_pedido)
		FROM (
			SELECT SUM(valor_unitario) AS total_pedido
			FROM pedido_produto
			GROUP BY id_pedido
		) AS totais
	)
);

-- 7. O nome do cliente e a quantidade de pedidos feitos pelo cliente.
SELECT
	cln.nome,
	(SELECT COUNT(*) FROM pedidos AS pdd WHERE pdd.id_cliente = cln.id) AS total
FROM clientes AS cln;

-- 8. Para revisar, refaça o exercício anterior (número 07) utilizando group by e
-- mostrando somente os clientes que fizeram pelo menos um pedido.
SELECT
	cln.nome,
	COUNT(pdd.id) AS total
FROM pedidos AS pdd
LEFT JOIN clientes AS cln
	ON pdd.id_cliente = cln.id
GROUP BY cln.nome;