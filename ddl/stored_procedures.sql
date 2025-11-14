-- Exercícios procedures

-- 1. Crie uma stored procedure que receba como parâmetro o ID do produto e o
-- percentual de aumento, e reajuste o preço somente deste produto de acordo
-- com o valor passado como parâmetro
CREATE OR REPLACE PROCEDURE reajustar_preco(id_produto INTEGER, perc_aumento FLOAT)
LANGUAGE SQL AS $$
	UPDATE produtos
	SET valor = valor * (1 + perc_aumento / 100)
	WHERE id = id_produto;
$$;

-- 2. Crie uma stored procedure que receba como parâmetro o ID do produto
-- e exclua da base de dados somente o produto com o ID correspondente
CREATE OR REPLACE PROCEDURE excluir_produto(id_produto INTEGER)
LANGUAGE SQL AS $$
	DELETE FROM produtos
	WHERE id = id_produto
$$;