CREATE TABLE IF NOT EXISTS produtos (
	id INTEGER NOT NULL,
	id_fornecedor INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,
	valor NUMERIC(10,2) NOT NULL,

	CONSTRAINT pk_prd_id PRIMARY KEY (id),
	CONSTRAINT fk_prd_idfornecedor FOREIGN KEY (id_fornecedor) REFERENCES fornecedores (id)
);

INSERT INTO produtos (id, id_fornecedor, nome, valor)
VALUES (1, 1, 'Microcomputador', 800);

INSERT INTO produtos (id, id_fornecedor, nome, valor)
VALUES (2, 1, 'Monitor', 500);

INSERT INTO produtos (id, id_fornecedor, nome, valor)
VALUES (3, 2, 'Placa-mãe', 200);

INSERT INTO produtos (id, id_fornecedor, nome, valor)
VALUES (4, 2, 'HD', 150);

INSERT INTO produtos (id, id_fornecedor, nome, valor)
VALUES (5, 2, 'Placa de vídeo', 200);

INSERT INTO produtos (id, id_fornecedor, nome, valor)
VALUES (6, 3, 'Memória RAM', 100);

INSERT INTO produtos (id, id_fornecedor, nome, valor)
VALUES (7, 1, 'Gabinete', 35);