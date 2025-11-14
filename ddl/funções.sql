-- Exercícios funções
-- 1. Crie uma função que receba como parâmetro o ID do pedido e retorne o valor total deste pedido
CREATE OR REPLACE FUNCTION get_valor_pedido(id_pedido INTEGER)
RETURNS FLOAT AS $$
BEGIN
	RETURN (
		SELECT valor FROM pedidos
		WHERE id = id_pedido
	);
END;
$$ LANGUAGE plpgsql;

-- 2. Crie uma função chamada “maior”, que quando executada retorne o pedido com o maior valor
CREATE OR REPLACE FUNCTION get_maior_pedido(id_pedido INTEGER)
RETURNS INTEGER AS $$
BEGIN
	RETURN (
		SELECT id FROM pedidos
		ORDER BY valor DESC
		LIMIT 1
	);
END;
$$ LANGUAGE plpgsql;