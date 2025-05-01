-- Criar o Banco de Dados
CREATE DATABASE EcommerceSQL;
GO

USE EcommerceSQL;
GO

-- Criar tabelas

-- Clientes
CREATE TABLE clientes (
	id INT IDENTITY(1,1) PRIMARY KEY,
nome NVARCHAR(100),
ESTADO CHAR(2)
);


-- Produtos
CREATE TABLE produtos (
id INT IDENTITY(1,1) PRIMARY KEY,
nome NVARCHAR(100),
categoria NVARCHAR(50),
preco DECIMAL(10,2)
);

-- Vendas
CREATE TABLE vendas (
id INT IDENTITY(1,1) PRIMARY KEY,
id_cliente INT FOREIGN KEY REFERENCES clientes(id),
id_produto INT FOREIGN KEY REFERENCES produtos(id),
quantidade INT,
data_venda DATE
);
