drop database dbGraficaGF;

create database dbGraficaGF;

use dbGraficaGF;

-- criar as tabelas com integridade e consistência
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
cpf char(14) not null unique,
salario decimal(9,2) default 0 check(salario >=0),
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codFunc)
);

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100) not null,
cnpj char(17) not null unique,
primary key(codForn)
);

create table tbClientes(
codCli int not null auto_increment,
nome varchar(100) not null,
cpf char(14) not null unique,
primary key(codCli)
);

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(30) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100) not null,
valor decimal(9,2) default 0 check(valor >=0),
qtde int default 0 check(qtde >=0),
dataEnt date,
horaEnt time,
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn)
);

create table tbVendas(
codVenda int not null auto_increment,
dataVenda date,
horaVenda time,
qtde int default 0 check(qtde >= 0),
codUsu int not null,
codProd int not null,
codCli int not null,
primary key(codVenda),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbClientes(codCli)
);

show tables;

desc tbFuncionarios;
desc tbFornecedores;
desc tbClientes;
desc tbUsuarios;
desc tbProdutos;
desc tbVendas;

-- inserindo registros nas tabelas


insert into tbFuncionarios(nome,cpf,salario,sexo)
	values('Mauricio Antunes','158.952.358-88',1500.50,'M');
insert into tbFuncionarios(nome,cpf,salario,sexo)
	values('Vitoria Cristina dos Santos','147.852.748-21',10500.00,'F');
insert into tbFuncionarios(nome,cpf,salario,sexo)
	values('Thiago Gonçalves Santos','127.852.748-21',8500.00,'M');
insert into tbFuncionarios(nome,cpf,salario,sexo)
	values('Lucas de Meireles Gonzaga','137.852.748-21',5500.00,'M');
insert into tbFuncionarios(nome,cpf,salario,sexo)
	values('Isabelli Chrispiniano','852.587.848-21',10500.00,'F');


insert into tbFornecedores(nome,cnpj)
	values('Advance Papers','147.258.0001/2518');
insert into tbFornecedores(nome,cnpj)
	values('Papeis SA','187.258.0001/2518');
insert into tbFornecedores(nome,cnpj)
	values('Colas e Colagens','257.258.0001/2518');

insert into tbClientes(nome,cpf)
	values('Gustavo da Penha','325.952.687-99');

insert into tbUsuarios(nome,senha,codFunc)
	values('mauricio.antunes','123456',1);
insert into tbUsuarios(nome,senha,codFunc)
	values('vitoria.csantos','1234567',2);
insert into tbUsuarios(nome,senha,codFunc)
	values('isabelli.chrispiniano','152234567',5);

insert into tbProdutos(descricao,valor,qtde,dataEnt,horaEnt,codForn)
	values('Papel A4',10.00,50,'2023/11/25','09:45:45',2);

insert into tbVendas(dataVenda,horaVenda,qtde,codUsu,codProd,codCli)
	values('2023/11/30','09:50:00',25,2,1,1);

-- alterado registros nas tabelas

-- excluindo registros nas tabelas

-- pesquisando registros nas tabelas

select * from tbFuncionarios;
select * from tbFornecedores;
select * from tbClientes;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;