-- Exercícios – consultas simples
-- 1. Somente o nome de todos os vendedores em ordem alfabética.
SELECT nome FROM vendedores
ORDER BY nome;

-- 2. Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.
SELECT nome, valor FROM produtos
WHERE valor > 200
ORDER BY valor;

-- 3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
SELECT
	nome, valor,
	ROUND(valor * 1.1, 2) AS valor_reajustado
FROM produtos
ORDER BY nome;

-- 4. Os municípios do Rio Grande do Sul.
SELECT nome FROM municipios
WHERE id_uf = 2;

-- 5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.
SELECT id, data_pedido, valor FROM pedidos
WHERE data_pedido BETWEEN '2008-04-10' AND '2008-04-25'
ORDER BY valor;

-- 6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.
SELECT id, valor FROM pedidos
WHERE valor BETWEEN 1000 AND 1500;

-- 7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.
SELECT id, valor FROM pedidos
WHERE valor NOT BETWEEN 100 AND 500;

-- 8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.
SELECT id, id_vendedor, valor FROM pedidos
WHERE id_vendedor = 1
ORDER BY valor DESC;

-- 9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
SELECT id, id_cliente, valor FROM pedidos
WHERE id_cliente = 1
ORDER BY valor;

-- 10. Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.
SELECT id, id_cliente, id_vendedor FROM pedidos
WHERE id_cliente = 15 AND id_vendedor = 1;

-- 11. Os pedidos que foram transportados pela transportadora União Transportes.
SELECT id, id_transportadora FROM pedidos
WHERE id_transportadora = 2;

-- 12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
SELECT id, id_vendedor FROM pedidos
WHERE id_vendedor IN (5,7);

-- 13. Os clientes que moram em União da Vitória ou Porto União.
SELECT nome, id_municipio FROM clientes
WHERE id_municipio IN (2,3);

-- 14. Os clientes que não moram em União da Vitória e nem em Porto União.
SELECT nome, id_municipio FROM clientes
WHERE id_municipio NOT IN (2,3);

-- 15. Os clientes que não informaram o logradouro.
SELECT nome, logradouro FROM clientes
WHERE logradouro IS NULL;

-- 16. Os clientes que moram em avenidas.
SELECT nome, logradouro FROM clientes
WHERE logradouro LIKE 'Av%';

-- 17. Os vendedores que o nome começa com a letra S.
SELECT nome FROM vendedores
WHERE nome LIKE 'S%';

-- 18. Os vendedores que o nome termina com a letra A.
SELECT nome FROM vendedores
WHERE nome LIKE '%a';

-- 19. Os vendedores que o nome não começa com a letra A.
SELECT nome FROM vendedores
WHERE nome NOT LIKE 'A%';

-- 20. Os municípios que começam com a letra P e são de Santa Catarina.
SELECT nome, id_uf FROM municipios
WHERE nome LIKE 'P%' AND id_uf = 3;

-- 21. As transportadoras que informaram o endereço.
SELECT nome, logradouro, numero FROM transportadoras
WHERE logradouro IS NOT NULL
	AND numero IS NOT NULL;

-- 22. Os itens do pedido 01.
SELECT id_pedido, id_produto FROM pedido_produto
WHERE id_pedido = 1;

-- 23. Os itens do pedido 06 ou do pedido 10.
SELECT id_pedido, id_produto FROM pedido_produto
WHERE id_pedido IN (6,10);