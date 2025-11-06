-- Exercícios – funções agregadas
-- 1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.
SELECT
	id_vendedor,
	ROUND(AVG(valor), 2) AS media_vendas
FROM pedidos
GROUP BY id_vendedor
HAVING SUM(valor) > 200;

-- 2. Os vendedores que venderam mais que R$ 1500,00.
SELECT
	id_vendedor,
	SUM(valor) AS vendas_totais
FROM pedidos
GROUP BY id_vendedor
HAVING SUM(valor) > 1500;

-- 3. O somatório das vendas de cada vendedor.
SELECT
	id_vendedor,
	SUM(valor) AS vendas_totais
FROM pedidos
GROUP BY id_vendedor;

-- 4. A quantidade de municípios.
SELECT COUNT(*) FROM municipios;

-- 5. A quantidade de municípios que são do Paraná ou de Santa Catarina.
SELECT COUNT(*) FROM municipios
WHERE id_uf IN (3,4);

-- 6. A quantidade de municípios por estado.
SELECT
	id_uf,
	COUNT(*)
FROM municipios
GROUP BY id_uf
ORDER BY id_uf;

-- 7. A quantidade de clientes que informaram o logradouro.
SELECT COUNT(*) FROM clientes
WHERE logradouro IS NOT NULL;

-- 8. A quantidade de clientes por município.
SELECT
	id_municipio,
	COUNT(*)
FROM clientes
GROUP BY id_municipio
ORDER BY id_municipio;

-- 9. A quantidade de fornecedores.
SELECT COUNT(*) FROM fornecedores;

-- 10. A quantidade de produtos por fornecedor.
SELECT
	id_fornecedor,
	COUNT(*)
FROM produtos
GROUP BY id_fornecedor
ORDER BY id_fornecedor;

-- 11. A média de preços dos produtos do fornecedor Cap. Computadores.
SELECT ROUND(AVG(valor), 2) FROM produtos
WHERE id_fornecedor = 1;

-- 12. O somatório dos preços de todos os produtos.
SELECT SUM(valor) FROM produtos;

-- 13. O nome do produto e o preço somente do produto mais caro.
SELECT nome, valor FROM produtos
ORDER BY valor DESC
LIMIT 1;

-- 14. O nome do produto e o preço somente do produto mais barato.
SELECT nome, valor FROM produtos
ORDER BY valor
LIMIT 1;

-- 15. A média de preço de todos os produtos.
SELECT ROUND(AVG(valor), 2) FROM produtos;

-- 16. A quantidade de transportadoras.
SELECT COUNT(*) FROM transportadoras;

-- 17. A média do valor de todos os pedidos.
SELECT ROUND(AVG(valor), 2) FROM pedidos;

-- 18. O somatório do valor do pedido agrupado por cliente.
SELECT
	id_cliente,
	SUM(valor) AS valor_total
FROM pedidos
GROUP BY id_cliente
ORDER BY id_cliente;

-- 19. O somatório do valor do pedido agrupado por vendedor.
SELECT
	id_vendedor,
	SUM(valor) AS valor_total
FROM pedidos
GROUP BY id_vendedor
ORDER BY id_vendedor;

-- 20. O somatório do valor do pedido agrupado por transportadora.
SELECT
	id_transportadora,
	SUM(valor) AS valor_total
FROM pedidos
GROUP BY id_transportadora
	HAVING id_transportadora IS NOT NULL
ORDER BY id_transportadora;

-- 21. O somatório do valor do pedido agrupado pela data.
SELECT
	data_pedido,
	SUM(valor) AS valor_total
FROM pedidos
GROUP BY data_pedido
ORDER BY data_pedido;

-- 22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.
SELECT 
	id_cliente,
	id_vendedor,
	id_transportadora,
	SUM(valor) AS valor_total
FROM pedidos
GROUP BY id_cliente, id_vendedor, id_transportadora
ORDER BY id_cliente;

-- 23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.
SELECT SUM(valor) AS valor_total FROM pedidos
WHERE data_pedido BETWEEN '2008-04-01' AND '2009-12-10'
	AND valor > 200;

-- 24. A média do valor do pedido do vendedor André.
SELECT ROUND(AVG(valor), 2) AS valor_medio FROM pedidos
WHERE id_vendedor = 1;

-- 25. A média do valor do pedido da cliente Jéssica.
SELECT ROUND(AVG(valor), 2) AS valor_medio FROM pedidos
WHERE id_cliente = 15;

-- 26. A quantidade de pedidos transportados pela transportadora BS. Transportes.
SELECT COUNT(*) FROM pedidos
WHERE id_transportadora = 1;

-- 27. A quantidade de pedidos agrupados por vendedor.
SELECT
	id_vendedor,
	COUNT(*)
FROM pedidos
GROUP BY id_vendedor
ORDER BY id_vendedor;

-- 28. A quantidade de pedidos agrupados por cliente.
SELECT
	id_cliente,
	COUNT(*)
FROM pedidos
GROUP BY id_cliente
ORDER BY id_cliente;

-- 29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.
SELECT COUNT(*) FROM pedidos
WHERE data_pedido BETWEEN '2008-04-15' AND '2008-04-25';

-- 30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.
SELECT COUNT(*) FROM pedidos
WHERE valor > 1000;

-- 31. A quantidade de microcomputadores vendida.
SELECT SUM(quantidade) FROM pedido_produto
WHERE id_produto = 1;

-- 32. A quantidade de produtos vendida agrupado por produto.
SELECT
	id_produto,
	SUM(quantidade) AS quantidade
FROM pedido_produto
GROUP BY id_produto
ORDER BY id_produto;

-- 33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.
SELECT
	id_pedido,
	SUM(valor_unitario) AS valor_total
FROM pedido_produto
GROUP BY id_pedido
ORDER BY id_pedido;

-- 34. A quantidade de produtos agrupados por pedido.
SELECT
	id_pedido,
	SUM(quantidade) AS quantidade
FROM pedido_produto
GROUP BY id_pedido
ORDER BY id_pedido;

-- 35. O somatório dos valores unitários de todos os produtos.
SELECT SUM(valor_unitario) FROM pedido_produto;

-- 36. A média dos produtos do pedido 6.
SELECT ROUND(AVG(valor_unitario), 2) AS valor_medio FROM pedido_produto
WHERE id_pedido = 6;

-- 37. O valor do maior produto do pedido.
SELECT MAX(valor_unitario) FROM pedido_produto;

-- 38. O valor do menor produto do pedido.
SELECT MIN(valor_unitario) FROM pedido_produto;

-- 39. O somatório da quantidade de produtos por pedido.
SELECT
	id_pedido,
	SUM(quantidade) AS quantidade
FROM pedido_produto
GROUP BY id_pedido
ORDER BY id_pedido;

-- 40. O somatório da quantidade de todos os produtos do pedido.
SELECT SUM(quantidade) FROM pedido_produto;
