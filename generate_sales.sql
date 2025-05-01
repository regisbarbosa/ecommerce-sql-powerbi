-- Inserir vendas (aleatórias)

DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
	INSERT INTO vendas (id_cliente, id_produto, quantidade, data_venda)
	VALUES (
		ABS(CHECKSUM(NEWID())) % 10 + 1,      -- cliente aleatório (1 a 10)
        ABS(CHECKSUM(NEWID())) % 10 + 1,      -- produto aleatório (1 a 10)
        ABS(CHECKSUM(NEWID())) % 5 + 1,       -- quantidade (1 a 5)
        DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 180, GETDATE()) -- últimos 6 meses
    );

    SET @i += 1;
END;

-- Visualizando as tabelas

SELECT * FROM clientes;

SELECT * FROM produtos;

SELECT * FROM vendas;