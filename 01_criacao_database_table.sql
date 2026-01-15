CREATE DATABASE IF NOT EXISTS loja_virtual;
USE loja_virtual;

CREATE TABLE IF NOT EXISTS categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    descricao_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS uf (
    id_uf INT PRIMARY KEY AUTO_INCREMENT,
    sigla CHAR(2) NOT NULL,
    descricao_uf VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS cidade (
    id_cidade INT PRIMARY KEY AUTO_INCREMENT,
    id_uf INT NOT NULL,
    descricao_cidade VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_uf) REFERENCES uf(id_uf)
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    descricao_produto VARCHAR(150) NOT NULL,
    id_categoria INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(200) NOT NULL,
    cpf_cnpj VARCHAR(20) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(150),
    endereco VARCHAR(200),
    id_uf INT NOT NULL,
    id_cidade INT NOT NULL,
    cep VARCHAR(10),
    FOREIGN KEY (id_uf) REFERENCES uf(id_uf),
    FOREIGN KEY (id_cidade) REFERENCES cidade(id_cidade)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    data_pedido DATE NOT NULL,
    total_pedido DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE pedidos_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    referencia VARCHAR(50),
    descricao VARCHAR(150),
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);