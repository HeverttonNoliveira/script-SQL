-- criando banco de dados
create database dbDataTypes;
-- usando banco de dados
use dbDataTypes;

-- criando tabela
create table tbPet(
    Codigo int,
    Nome varchar(100),
    Email char(100),
    Telefone char(9),
    cpf char(14),
    dataEnt date,
    salario decimal(9,2)
);

create table tbUsuarios(
    Codigo int,
    Nome varchar(50),
    senha varchar(30)
);

-- usando a tabela
show table;

-- visualizar a tabela
desc tbPet;
desc tbUsuarios;



