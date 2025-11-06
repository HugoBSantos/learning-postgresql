CREATE TABLE IF NOT EXISTS pedido_produto (
	id_pedido INTEGER NOT NULL,
	id_produto INTEGER NOT NULL,
	quantidade INTEGER NOT NULL,
	valor_unitario NUMERIC(10,2) NOT NULL,

	CONSTRAINT pk_pdp_idpedidoproduto PRIMARY KEY (id_pedido, id_produto),
	CONSTRAINT fk_pdp_idpedido FOREIGN KEY (id_pedido) REFERENCES pedidos (id),
	CONSTRAINT fk_pdp_idproduto FOREIGN KEY (id_produto) REFERENCES produtos (id)
);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (1, 1, 1, 800.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (1, 2, 1, 500.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (2, 2, 1, 500.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (3, 4, 2, 150.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (4, 1, 1, 800.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (4, 3, 1, 200.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (5, 3, 1, 200.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (6, 1, 2, 800.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (6, 7, 1, 35.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (6, 5, 1, 200.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (6, 4, 1, 150.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (7, 1, 1, 800.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (8, 7, 5, 35.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (9, 1, 1, 800.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (9, 2, 1, 500.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (10, 5, 1, 200.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (11, 5, 1, 200.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (11, 6, 1, 100.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (12, 2, 1, 500.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (13, 3, 1, 200.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (13, 4, 1, 150.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (14, 6, 3, 100.00);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario)
VALUES (15, 3, 1, 200.00);