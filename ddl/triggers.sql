-- Exercícios triggers

-- 1. Crie uma tabela chamada PEDIDOS_APAGADOS
CREATE TABLE IF NOT EXISTS pedidos_apagados (
	id INTEGER NOT NULL,
	id_cliente INTEGER NOT NULL,
	id_transportadora INTEGER,
	id_vendedor INTEGER NOT NULL,
	data_pedido DATE NOT NULL,
	valor NUMERIC(10,2) NOT NULL
);

-- 2. Faça uma trigger que quando um pedido for apagado, todos os seus dados
-- devem ser copiados para a tabela PEDIDOS_APAGADOS
CREATE OR REPLACE FUNCTION pedido_log()
RETURNS TRIGGER
LANGUAGE plpgsql AS $$
BEGIN
	INSERT INTO pedidos_apagados
		(id, id_cliente, id_transportadora,
		id_vendedor, data_pedido, valor)
	VALUES
		(OLD.id, OLD.id_cliente, OLD.id_transportadora,
		OLD.id_vendedor, OLD.data_pedido, OLD.valor);
	RETURN OLD;
END;
$$;

CREATE OR REPLACE TRIGGER log_pedido_trigger
BEFORE DELETE
ON pedidos FOR EACH ROW
EXECUTE PROCEDURE pedido_log();