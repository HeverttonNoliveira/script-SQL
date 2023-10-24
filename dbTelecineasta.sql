create database dbTeleCineastra;
use dbTeleCineastra;

-- criando
create table tbEmprestimo(
    numFilme int,
    numEro int,
    tipo varchar(50),
    cliente int,
    dataret date,
    datedev date,
    valorPg float(9)
);

create table tbCliente(
    numCliente int,
    nome varchar(50),
    edereco varchar(50),
    foneRes varchar(50),
    foneCel varchar(50)
);

create table tbMidia(
    numFilme int,
    numero int,
    tipo varchar(50)
);

create table tbFilme(
    numFilme int,
    tituloOriginal varchar(50),
    tituloPT varchar(50),
    duracao int,
    dataLancamento date,
    direcao varchar(250),
    categoria varchar(50),
    classificacao int
);

create table tbClassificacao(
    cod int,
    nome varchar(50),
    preco float(9)
);

create table tbEstrela(
    numFilme int,
    codator int
);

create table tbAtor(
    cod int,
    dataNasc date,
    nacionalidade varchar(50),
    nomeReal varchar(50),
    nomeArtistico varchar(50)
);

show tables;

desc tbEmprestimo;
desc tbCliente;
desc tbMidia;
desc tbFilme;
desc tbClassificacao;
desc tbEstrela;
desc tbAtor;
