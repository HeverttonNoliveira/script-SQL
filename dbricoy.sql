create database dbricoy;
use dbricoy;

create table tbCategorias(
    idCategorias int,
    dsCategoria varchar(45)
);

create table tbProduos(
    idProdutos int,
    disProdutos varchar(45),
    preco float(9),
    qtDade int,
    foto longblob,
    categoriasIdCategorias int
);

create table tbPedidoitens(
    idPedidoItens int,
    qtAde int,
    preco float(9),
    total float(9),
    pedidosIdpedidos int,
    produtosIdprodutos int
);

create table tbPedidos(
    idPedidos int,
    dataPedidos date,
    statusPedidoa varchar(45),
    sessao varchar(45),
    clientesIdClientes int
);

create table tbClientes(
    idClientes int,
    nome varchar(100),
    email varchar(100),
    senha varchar(100)
);

show tables;

desc tbCategorias;
desc tbProduos;
desc tbPedidoitens;
desc tbPedidos;