DROP DATABASE dbFlora;
CREATE DATABASE dbFlora;
USE dbFlora;


-- Tabelas
CREATE TABLE tbFuncionarios(
    nome VARCHAR(45),
    CPF char(14)
);

CREATE TABLE tbPerson(
    ID int,
    LastName VARCHAR(45),
    FirstName VARCHAR(45),
    Addres CHAR(45),
    City char(45)
);

INSERT INTO tbPerson(ID,LastName,FirstName,Addres,CIty)
values(1,'Hansen','Ola','Timotevin 10','Sandnes');

INSERT INTO tbPerson(ID,LastName,FirstName,Addres,City)
values(2,'Svendson','Tove','Borgvn 23','Sandnes');

INSERT INTO tbPerson(ID,LastName,FirstName,Addres,City)
values(3,'Pettersen','Kari','Storgt 20','Stavanger');


-- COMMENT ADD na estrutura de uma tabela
ALTER TABLE tbFuncionarios add email VARCHAR(100);
ALTER TABLE tbFuncionarios add telefone CHAR(10);
ALTER table tbFuncionarios add Codigo int;
ALTER TABLE tbFuncionarios add Salario decimal(9,2);
ALTER TABLE tbFuncionarios ADD CNPJ int;

ALTER TABLE tbPerson ADD DateOfBirth date;

-- COMMENT Modificado as colunas da tabela
ALTER TABLE tbFuncionarios modify column nome VARCHAR(100);
ALTER table tbPerson modify column DateOfBirth year;

-- COMMENT apagando colunas
ALTER TABLE tbFuncionarios DROP column CNPJ;
ALTER TABLE tbPerson DROP column DateOfBirth;

--  COMMENT visualizado
desc tbPerson;
SELECT * FROM tbPerson;
desc tbFuncionarios;

