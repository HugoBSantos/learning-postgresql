-- Exercícios – comandos adicionais
-- 1. O nome do cliente e somente o mês de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
SELECT
	nome,
	COALESCE(EXTRACT(MONTH FROM data_nascimento) || '', 'Não informado') AS mes_nascimento
FROM clientes;

-- 2. O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc). Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
SELECT
	nome,
	CASE EXTRACT(MONTH FROM data_nascimento)
		WHEN 1 THEN 'Janeiro'
		WHEN 2 THEN 'Fevereiro'
		WHEN 3 THEN 'Março'
		WHEN 4 THEN 'Abril'
		WHEN 5 THEN 'Maio'
		WHEN 6 THEN 'Junho'
		WHEN 7 THEN 'Julho'
		WHEN 8 THEN 'Agosto'
		WHEN 9 THEN 'Setembro'
		WHEN 10 THEN 'Outubro'
		WHEN 11 THEN 'Novembro'
		WHEN 12 THEN 'Dezembro'
	ELSE 'Não informado'
	END AS mes_nascimento
FROM clientes;

-- 3. O nome do cliente e somente o ano de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
SELECT
	nome,
	COALESCE(EXTRACT(YEAR FROM data_nascimento) || '', 'Não informado') AS mes_nascimento
FROM clientes;

-- 4. O caractere 5 até o caractere 10 de todos os municípios.
SELECT SUBSTRING(nome, 5, 10) FROM municipios;

-- 5. O nome de todos os municípios em letras maiúsculas.
SELECT UPPER(nome) AS nome FROM municipios;

-- 6. O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.
SELECT
	nome,
	CASE genero
		WHEN 'M' THEN 'Masculino'
	ELSE 'Feminino'
	END AS genero
FROM clientes;

-- 7. O nome do produto e o valor. Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, caso contrário, mostrar a mensagem “Abaixo de 500”.
SELECT
	nome,
	CASE valor > 500
		WHEN TRUE THEN 'Acima de 500'
	ELSE 'Abaixo de 500'
	END AS valor
FROM produtos;