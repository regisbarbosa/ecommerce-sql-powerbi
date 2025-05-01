# 📊 Projeto de Análise de Vendas — SQL Server + Power BI

Este projeto simula um cenário de e-commerce com dados fictícios para praticar modelagem em SQL Server e visualização em Power BI.

## 🔧 Tecnologias
- SQL Server (T-SQL)
- Power BI
- DAX

## 📁 Estrutura

📂 sql 
├── create_tables.sql # Criação das tabelas 
├── insert_data.sql # Inserção de clientes e produtos 
├── generate_sales.sql # Geração de 100 vendas aleatórias 
├── views.sql # Views de análise para conectar ao Power BI

📂 powerbi └── dashboard.pbix # Dashboard com insights de vendas

## 📌 Objetivo
- Criar um mini banco de dados relacional simulado
- Usar consultas SQL para gerar análises reais (via Views)
- Conectar essas análises ao Power BI
- Demonstrar domínio de SQL + BI no portfólio

## 📈 Análises incluídas
- Receita mensal
- Produtos mais vendidos
- Faturamento por produto
- Compras por estado
- Top clientes

---

## 💡 Como rodar localmente
1. Execute os scripts na pasta `sql` em seu SQL Server
2. Conecte o Power BI diretamente ao banco e importe as Views
3. Use o arquivo `dashboard.pbix` como referência ou monte o seu

---
