DROP DATABASE dbWork;
CREATE DATABASE dbWork;
USE dbWork;

-- Tabelas

CREATE TABLE tbClientes(
    idCliente INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Tel CHAR(10) NOT NULL UNIQUE,
    email VARCHAR(45)NOT NULL UNIQUE,
    PRIMARY KEY (idCliente)
);

CREATE TABLE tbVendedores(
    idVend INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR (45) NOT NULL,
    PRIMARY KEY (idVend)
);

CREATE TABLE tbPagamento(
    idPag INT NOT NULL AUTO_INCREMENT,
    formaPagamento VARCHAR(45) NOT NULL UNIQUE,
    PRIMARY KEY(idPag)
);

CREATE TABLE tbCategoria(
    idCate INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    PRIMARY KEY(idCate)
);

CREATE TABLE tbFornecedores(
    idForn INT NOT NULL AUTO_INCREMENT,
    cnpj VARCHAR(18)NOT NULL UNIQUE,
    nome VARCHAR(45) NOT NULL,
    PRIMARY KEY(idForn)
);

CREATE TABLE tbVendas(
    idVenda INT NOT NULL AUTO_INCREMENT,
    valorTotal decimal (10,2) DEFAULT 0 CHECK(valorTotal >=0),
    data DATE NOT NULL,
    idCliente INT NOT NULL,
    idVend INT NOT NULL,
    idPag INT NOT NULL,
    PRIMARY KEY(idVenda),
    FOREIGN KEY (idCliente) REFERENCES tbClientes(idCliente),
    FOREIGN KEY (idVend) REFERENCES tbVendedores(idVend),
    FOREIGN KEY (idPag) REFERENCES tbPagamento(idPag)
);

CREATE TABLE tbProdutos(
    idProd INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45)NOT NULL,
    preco decimal (10,2) DEFAULT 0 CHECK(preco >=0),
    qtdEstoque VARCHAR(45)NOT NULL,
    idCate INT NOT NULL,
    idForn INT NOT NULL,
    PRIMARY KEY(idProd),
    FOREIGN KEY (idCate) REFERENCES tbCategoria(idCate),
    FOREIGN KEY (idForn) REFERENCES tbFornecedores(idForn)
);

CREATE TABLE tbVendasAndProdutos(
    idVenda INT NOT NULL,
    idProd INT NOT NULL,
    FOREIGN KEY(idVenda) REFERENCES tbVendas(idVend),
    FOREIGN KEY(idProd) REFERENCES tbProdutos(idProd)
);

SHOW TABLES;

DESC tbClientes;
DESC tbVendedores;
DESC tbPagamento;
DESC tbCategoria;
DESC tbFornecedores;
DESC tbVendas;
DESC tbProdutos;

-- INSERT
INSERT INTO tbClientes(nome,tel,email)
VALUES('Abigail Olivera','94524-1389','abigail.Oli@hotmail.com');

INSERT INTO tbVendedores(nome)
VALUES('Fernanda');

INSERT INTO tbPagamento(formaPagamento)
VALUES('Debito');

INSERT INTO tbCategoria(nome)
VALUES('Eletronicos');

INSERT INTO tbFornecedores ( cnpj,nome ) 
VALUES('12.658.745/9884-51','Xbox');

INSERT INTO tbVendas(valorTotal,data,idCliente,idVend,idPag)
VALUES(1500.00,'2023/11/11',1,1,1);

INSERT INTO tbProdutos (nome,preco,qtdEstoque,idCate,idForn) 
VALUES('Jogos',350.00,'100',1,1);

SELECT * FROM tbClientes;
SELECT * FROM tbVendedores;
SELECT * FROM tbPagamento;
SELECT * FROM tbCategoria;
SELECT * FROM tbFornecedores;
SELECT * FROM tbVendas;
SELECT * FROM tbProdutos;