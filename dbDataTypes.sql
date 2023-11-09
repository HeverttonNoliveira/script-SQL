DROP database dbdatatypes;
create database dbdatatypes;
-- usando banco de dados
use dbdatatypes;
-- criando tabela
create table
    tbPet (
        Codigo int,
        Nome varchar(100),
        Email char(100),
        Telefone char(10),
        cpf char(14),
        dataEnt date,
        salario decimal(9, 2)
    );

create table
    tbUsuarios (Codigo int, Nome varchar(50), senha varchar(30));
-- usando a tabela
show tables;

-- visualizar a tabela
desc tbPet;
desc tbUsuarios;
-
-- Insirido registro nas tabelas
INSERT INTO tbPet (Codigo,Nome,Email,Telefone,cpf,dataEnt,salario)
values(1,'Abigail Oliveira','abigail@hotmail.com','55555-5555','555.555.555-55','2005/01/10',1500.65);

INSERT INTO tbPet(Codigo,Nome,Email,Telefone,cpf,dataEnt,salario) 
values(2,'Messi Ronaldo','MesNaldo@gmail.com','44444-4444','444.444.444-44','2005/01/10',10.00);

INSERT INTO tbPet(Codigo,Nome,Email,Telefone,cpf,dataEnt,salario) 
values(3,'Arthur','athur@gmail.com','66666-6666','222.222.222-22','2005/01/10',20.00);

-- visualizando os registro/dados insiridos
Select * from tbPet;

