-- Criar o Banco de Dados
CREATE DATABASE sistema;
GO

USE sistema;
GO

-- Criar tabelas

-- Clientes
CREATE TABLE clientes (
	id INT IDENTITY(1,1) PRIMARY KEY,
nome NVARCHAR(100),
estado CHAR(2)
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

ALTER TABLE vendas
ADD forma_pagamento VARCHAR(20);

--- Adicionar coluna data de nascimento em clientes
ALTER TABLE clientes
ADD data_nascimento DATE;

