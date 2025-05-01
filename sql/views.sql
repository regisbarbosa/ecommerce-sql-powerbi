-- Views

-- vw_receita_mensal

CREATE VIEW vw_receita_mensal AS
SELECT
	FORMAT(v.data_venda, 'yyyy-MM') AS mes,
	SUM(v.quantidade * p.preco) AS receita_total
FROM vendas v
JOIN produtos p ON v.id_produto = p.id
GROUP BY FORMAT(v.data_venda, 'yyyy-MM');

-- vw_produtos_mais_vendidos

CREATE VIEW vw_produtos_mais_vendidos AS
SELECT p.nome AS produto,
	SUM(v.quantidade) AS quantidade_total
FROM vendas v
JOIN produtos p ON v.id_produto = p.id
GROUP BY p.nome;

-- visualizando View
SELECT *  FROM vw_produtos_mais_vendidos;

-- vw_faturamento_por_produto

CREATE VIEW vw_faturamento_por_produto AS
SELECT p.nome AS produto,
	SUM(v.quantidade * p.preco) AS receita
FROM vendas v
JOIN produtos p ON v.id_produto = p.id
GROUP BY p.nome;

-- vw_compras_por_estado

CREATE VIEW vw_compras_por_estado AS
SELECT c.estado,
	SUM(v.quantidade * p.preco) AS valor_total
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id
JOIN produtos p ON v.id_produto = p.id
GROUP BY c.estado;
	
-- vw_top_clientes

CREATE VIEW vw_top_clientes AS
SELECT c.nome AS cliente,
	SUM(v.quantidade * p.preco) AS total_gasto
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id
JOIN produtos p ON v.id_produto = p.id
GROUP BY c.nome;

-- visualizando View vw_top_clientes
SELECT *  FROM vw_top_clientes;