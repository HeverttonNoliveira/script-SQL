DROP DATABASE dbbiblioteca2;
CREATE DATABASE dbbiblioteca2;
USE dbbiblioteca2;

-- Tabelas
CREATE TABLE tbLivro(
    idLivro SMALLINT(6),
    nomeLivro VARCHAR(70),
    IDcategoria SMALLINT(6),
    IDautor SMALLINT(6),
    dataPub date,
    PrecoLivro DECIMAL(6,2),
    IDeditora SMALLINT(6),
    ISBN13 char(13),
    ISBN10 char(10)
);

CREATE TABLE tbCategorias(
    IDcategoria SMALLINT(6),
    categoria VARCHAR(30)
);

CREATE TABLE tbEditoras(
    IDeditoras SMALLINT(6),
    nomeEditora VARCHAR(50)
);

CREATE TABLE tbAutores(
    IDautor SMALLINT(6),
    nomeAutor VARCHAR(30),
    sobrenomeAutor VARCHAR(60)
);

-- COMMENT tbLivros
INSERT INTO tbLivro(idLivro,nomeLivro,IDcategoria,IDautor,dataPub,PrecoLivro,IDeditora,ISBN13,ISBN10)
values(1,'O Príncipe Maquiavel',1,1,'07/15/2023','19,20',1,'A553','B553');

INSERT INTO tbLivro(idLivro,nomeLivro,IDcategoria,IDautor,dataPub,PrecoLivro,IDeditora,ISBN13,ISBN10)
values(2,'A Cabana',2,2,'07/07/2008','43,99',2,'A551','B551');

INSERT INTO tbLivro(idLivro,nomeLivro,IDcategoria,IDautor,dataPub,PrecoLivro,IDeditora,ISBN13,ISBN10)
values(3,'A garota do lago',3,3,'01/01/2017','19,20',3,'A484','B484');

INSERT INTO tbLivro(idLivro,nomeLivro,IDcategoria,IDautor,dataPub,PrecoLivro,IDeditora,ISBN13,ISBN10)
values(4,'O último desejo -The Witcher',4,4,'12/19/2019','19,20',4,'A099','B099');

INSERT INTO tbLivro(idLivro,nomeLivro,IDcategoria,IDautor,dataPub,PrecoLivro,IDeditora,ISBN13,ISBN10)
values(5,'A espada do destino - The Witcher',5,5,'12/19/2019','19,20',5,'A748','B748');

-- COMMENT tbCategorias
INSERT INTO tbCategorias(IDcategoria,categoria)
values(1,'Politica Filosofica');
INSERT INTO tbCategorias(IDcategoria,categoria)
values(2,'Suspense');
INSERT INTO tbCategorias(IDcategoria,categoria)
values(3,'Terror');
INSERT INTO tbCategorias(IDcategoria,categoria)
values(4,'Ficção');
INSERT INTO tbCategorias(IDcategoria,categoria)
values(5,'Ficção');

-- COMMENT tbAutores
INSERT INTO tbAutores(IDautor,nomeAutor,sobrenomeAutor)
values(1,'Nicola','Maquiavel');
INSERT INTO tbAutores(IDautor,nomeAutor,sobrenomeAutor)
values(2,'Willian','Young');
INSERT INTO tbAutores(IDautor,nomeAutor,sobrenomeAutor)
values(3,'Charlie','Donlea');
INSERT INTO tbAutores(IDautor,nomeAutor,sobrenomeAutor)
values(4,'Andrzej','Sapkowski');
INSERT INTO tbAutores(IDautor,nomeAutor,sobrenomeAutor)
values(5,'Andrzej','Sapkowski');

-- COMMENT tbEditora
INSERT INTO tbEditoras(IDeditoras,nomeEditora)
values(1,'Editora 1');
INSERT INTO tbEditoras(IDeditoras,nomeEditora)
values(2,'Editora 2');
INSERT INTO tbEditoras(IDeditoras,nomeEditora)
values(3,'Editora 3');
INSERT INTO tbEditoras(IDeditoras,nomeEditora)
values(4,'Editora 4');
INSERT INTO tbEditoras(IDeditoras,nomeEditora)
values(5,'Editora 5');

-- COMMENT teste
desc tbLivro;
SELECT * FROM tbLivro;

desc tbCategorias;
SELECT * FROM tbCategorias;

desc tbAutores;
SELECT * FROM tbAutores;

desc tbEditoras;
SELECT * FROM tbEditoras;


-- COMMENT ADD na estrutura de uma tabela
ALTER TABLE tbLivro ADD quantidade int;
ALTER TABLE tbAutores ADD emailAutor char(45);
ALTER TABLE tbEditoras ADD cnpj char(18);
ALTER TABLE tbEditoras ADD telefone char(10);
ALTER TABLE tbLivro ADD  dataEntrada datetime;


-- COMMENT Modificado as colunas da tabela
ALTER TABLE tbLivro modify column idLivro int;
ALTER TABLE tbLivro modify column IDcategoria int;
ALTER TABLE tbLivro modify column IDautor int;
ALTER TABLE tbLivro modify column IDeditora int; 
ALTER table tbLivro change precoLivro valor DECIMAL(6,2);
ALTER table tbLivro change nomeLivro descricao VARCHAR(70);

ALTER TABLE tbCategorias modify column IDcategoria int;

ALTER TABLE tbEditoras modify column IDeditoras int;

ALTER TABLE tbAutores modify column IDautor int;



-- COMMENT test mod
desc tbLivro;
desc tbCategorias;
desc tbAutores;
desc tbEditoras;






