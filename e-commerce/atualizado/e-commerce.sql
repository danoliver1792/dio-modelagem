-- Criação do Banco de Dados para o cenário E-commerce --

CREATE DATABASE ecommerce;

USE ecommerce;

-- Criação de tabelas --

CREATE TABLE cliente(
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
    Primeironome VARCHAR(15) NOT NULL,
    Sobrenome VARCHAR(15) NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    Identificacao VARCHAR(15) NOT NULL
);

CREATE TABLE cadastro(
	idCadastro INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(15)
);

CREATE TABLE produto(
	idProduto INT AUTO_INCREMENT PRIMARY KEY,
    categoria_crianca BOOL DEFAULT FALSE,
    categoria ENUM("Eletronico", "Brinquedo", "Alimento") NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    avaliacao FLOAT DEFAULT 0
);

CREATE TABLE pedido(
	idPedido INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT,
    StatusPedido ENUM("Cancelado", "Confirmado", "Processando") NOT NULL,
    Descricao VARCHAR(45) NOT NULL,
    FRETE FLOAT DEFAULT 10
);

CREATE TABLE pagamento(
	idPagamento INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT,
    Dinheiro FLOAT,
    Cartao FLOAT,
    Pix FLOAT
);

CREATE TABLE cartao(
	idCartao INT AUTO_INCREMENT PRIMARY KEY,
    NumerodoCartao VARCHAR(20) NOT NULL,
    Cvv CHAR(3),
    Validade DATE
);

CREATE TABLE estoque(
	idEstoque INT AUTO_INCREMENT PRIMARY KEY,
    LocalEstoque VARCHAR(45),
    Quantidade INT DEFAULT 0
);

CREATE TABLE fornecedor(
	idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    RazaoSocial VARCHAR(100) NOT NULL,
    Cnpj VARCHAR(15) NOT NULL UNIQUE,
    Telefone VARCHAR(15) NOT NULL,
    Endereco VARCHAR(100) NOT NULL
);
