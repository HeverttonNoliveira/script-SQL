-- apagando banco de dados
DROP DATABASE dbboteco;
-- criando banco de dados
CREATE DATABASE dbboteco;
-- acessando o banco
USE dbboteco;
-- visualizando bancos
SHOW DATABASES;

-- criando tabela
CREATE TABLE tbFuncionario(
    codFunc INT,
    nome VARCHAR(100),
    email VARCHAR(100),
    fone CHAR(10),
    cpf CHAR(14),
    logradouro VARCHAR(100),
    numero CHAR(5),
    cep CHAR(9),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    siglaEst CHAR(2)
);


INSERT INTO tbFuncionario(codForn,nome,email,fone,cpf,logradouro,numero,cep,bairro,cidade,siglaEst)
values(1,'Abigail Oliveira','AbigaOli@outlook.com','94524-1389','222.111.333.55','Rua Paulo Egidio Carvalho','114','04848-010','Jardim Santa Barbara','São Paulo','SP');



CREATE TABLE tbUsuario(
codUse int,
nome VARCHAR(100),
senha VARCHAR(100)
);

CREATE TABLE tbFornecedor(
    codForn INT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telCel CHAR(10),
    cnpj CHAR(18)
);

CREATE TABLE tbProdutos(
    codProd int,
    nome VARCHAR(100),
    valor DECIMAL(9,2),
    quant int,
    dataEnt date,
    hora Time
);

CREATE TABLE tbCliente(
    codCli int,
    nome VARCHAR(100),
    email VARCHAR(100),
    telCel CHAR(14),
    cpf CHAR(14)
);

CREATE TABLE tbVendas(
    codVend INT,
    codProd INT,
    codCli INT,
    codUse INT,
    quant INT,
    preco DECIMAL(9,2),
    dataVenda date,
    horaVenda Time
);

-- visualizando Tabela
desc tbFuncionario;
desc tbUsuario;
desc tbFornecedor;
desc tbProdutos;
desc tbCliente;
desc tbVendas;

-- insirindo registro na tabela



INSERT INTO tbUsuario(codUse,nome,senha)
values(1,'Abigail','senhaemBranco');

INSERT INTO tbFornecedor(codForn,nome,email,telCel,cnpj)
values(1,'Arthur','arthur@gmail.com','1234-12','00.222.212.321.9800');

INSERT INTO tbProdutos(codProd,nome,valor,quant,dataEnt,hora)
values(2,'Brinquedos',50.00,5,'2023/12/02','19:30:10');

INSERT INTO tbCliente(codCli,nome,email,telCel,cpf)
values(3,'Ada','ada@gmail.com','98754-2456','123.456.789.00');

INSERT INTO tbVendas(codVend,codProd,codCli,codUse,quant,preco,dataVenda,horaVenda)
values(3,3,3,3,3,50.00,'2023/12/02','19:30:10');

-- Visualizar registro
SELECT * FROM tbFuncionario;
SELECT * FROM tbUsuario;
SELECT * FROM tbProdutos;
SELECT * FROM tbFornecedor;
SELECT * FROM tbCliente;
SELECT * FROM tbVendas;


