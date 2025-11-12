CREATE INDEX idx_cln_nome ON clientes (nome);

-- Exercícios índices
-- 1. Adicione índices nas seguintes tabelas e campos
-- a. Pedido – data do pedido
CREATE INDEX idx_pdd_datapedido ON pedidos (data_pedido);

-- b. Produto – nome
CREATE INDEX idx_prd_nome ON produtos (nome);