CREATE TABLE IF NOT EXISTS pedidos (
	id INTEGER NOT NULL,
	id_cliente INTEGER NOT NULL,
	id_transportadora INTEGER,
	id_vendedor INTEGER NOT NULL,
	data_pedido DATE NOT NULL,
	valor NUMERIC(10,2) NOT NULL,

	CONSTRAINT pk_pdd_id PRIMARY KEY (id),
	CONSTRAINT fk_pdd_idcliente FOREIGN KEY (id_cliente) REFERENCES clientes (id),
	CONSTRAINT fk_pdd_idtransportadora FOREIGN KEY (id_transportadora) REFERENCES transportadoras (id),
	CONSTRAINT fk_pdd_idvendedor FOREIGN KEY (id_vendedor) REFERENCES vendedores (id)
);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(1, 1, 1, 1, '2008-04-01', 1300.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(2, 1, 1, 1, '2008-04-01', 500.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(3, 11, 2, 5, '2008-04-02', 300.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(4, 8, 1, 7, '2008-04-05', 1000.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(5, 9, 2, 6, '2008-04-06', 200.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(6, 10, 1, 6, '2008-04-06', 1985.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(7, 3, 1, 7, '2008-04-06', 800.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(8, 3, NULL, 7, '2008-04-06', 175.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(9, 12, NULL, 8, '2008-04-07', 1300.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(10, 6, 1, 8, '2008-04-10', 200.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(11, 15, 2, 1, '2008-04-15', 300.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(12, 15, 2, 5, '2008-04-20', 500.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(13, 9, 1, 7, '2008-04-20', 350.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(14, 2, 1, 5, '2008-04-23', 300.00);

INSERT INTO pedidos
	(id, id_cliente, id_transportadora, id_vendedor, data_pedido, valor)
VALUES
	(15, 11, NULL, 5, '2008-04-25', 200.00);