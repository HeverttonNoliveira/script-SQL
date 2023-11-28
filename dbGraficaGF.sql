DROP DATABASE dbGraficaGF;

CREATE DATABASE dbGraficaGF;
USE dbGraficaGF;

-- criar as tabelas com integridade e consistência
CREATE TABLE tbFunconarios(
    codFunc int NOT NULL AUTO_INCREMENT,
    nome varchar(100)NOT NULL,
    cpf char(14) NOT NULL UNIQUE,
    salario decimal(9,2) DEFAULT 0 CHECK (salario >=0),
    sexo char(1) DEFAULT 'F' CHECK(sexo IN('F','M')),
    PRIMARY KEY(codFunc)
);

CREATE TABLE tbUsuarios(
    codUsu int NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100)NOT NULL UNIQUE,
    senha char(100)NOT NULL UNIQUE,
    codFunc int NOT NULL,
    PRIMARY KEY(codUsu),
    FOREIGN KEY(codFunc) REFERENCES tbFunconarios (codFunc)
);

CREATE TABLE tbFornecedor(
    codForn int NOT NULL AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    cnpj char(17) NOT NULL UNIQUE,
    PRIMARY KEY(codForn)
);

CREATE TABLE tbCliente(
codCliente int NOT NULL AUTO_INCREMENT,
nome varchar(45)NOT NULL,
senha varchar(30) NOT NULL UNIQUE,
codForn int NOT NULL,
PRIMARY KEY (codCliente)
);

CREATE TABLE tbPRODUTOS(
    codProd int NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100)NOT NULL,
    valor decimal(9,2) DEFAULT 0 CHECK(valor >=0),
    qtde int DEFAULT 0 CHECK(qtde >=0),
    dataEnt date,
    horaEnt time,
    codForn int NOT NULL,
    PRIMARY KEY(codProd),
    FOREIGN KEY(codForn) REFERENCES tbFornecedor(codForn)
);

CREATE TABLE tbVendas(
    codVenda int NOT NULL AUTO_INCREMENT,
    dataVenda date,
    horaVenda time,
    qtde int DEFAULT 0 CHECK(qtde >=0),
    codUsu int NOT NULL,
    codProd int NOT NULL,
    codCliente int NOT NULL,
    PRIMARY KEY (codVenda),
    FOREIGN KEY (codUsu) REFERENCES tbUsuarios(codUsu),
    FOREIGN KEY (codProd) REFERENCES tbPRODUTOS (codForn),
    FOREIGN KEY (codCliente) REFERENCES tbCliente (codCliente)
);


SHOW TABLES;
DESC tbFunconarios;
DESC tbUsuarios;
DESC tbFornecedor;
DESC tbCliente;
DESC tbPRODUTOS;
DESC tbCliente;
