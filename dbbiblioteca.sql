DROP DATABASE dbbiblioteca;
CREATE DATABASE dbbiblioteca;
USE dbbiblioteca;

CREATE TABLE tbLivros(
    idlivros INT,
    titulo VARCHAR(45),
    ano INT,
    idAutor INT,
    idCategoria INT
);

CREATE TABLE tbAutor(
    idAutor INT,
    nome VARCHAR(45),
    pais VARCHAR(45)
);

CREATE TABLE tbCategoria(
    idCategoria INT,
    nome VARCHAR(45),
    descricao CHAR(45)
);

desc tbLivros;
desc tbAutor;
desc tbCategoria;

-- Tabela tbLivros
INSERT INTO tbLivros(idlivros,titulo,ano,idAutor,idCategoria)
values(1,'O Principe de Maquiavel',2018,1,5);

INSERT INTO tbLivros(idlivros,titulo,ano,idAutor,idCategoria)
values(2,'One Piece',1997,2,2);

INSERT INTO  tbLivros(idlivros,titulo,ano,idAutor,idCategoria)
values(3,'Percy Jackson:O cálice dos Deuses',2023,3,4);

INSERT INTO tbLivros(idlivros,titulo,ano,idAutor,idCategoria)
values(4,'A cabana',2007,4,1);

INSERT INTO tbLivros(idlivros,titulo,ano,idAutor,idCategoria)
values(5,'Não me faça pensar: atualizado ',2014,5,4);

-- Tabela tbAutor
INSERT INTO tbAutor(idAutor,nome,pais)
values(1,'Nicolau Maquiavel','Italia');

INSERT INTO tbAutor(idAutor,nome,pais)
values(2,'Eiichiro Oda','Japão');

INSERT INTO tbAutor(idAutor,nome,pais)
values(3,'Rick Riordan','EUA');

INSERT INTO tbAutor(idAutor,nome,pais)
values(4,'William P. Young','Canada');

INSERT INTO tbAutor(idAutor,nome,pais)
values(5,'Steve Krug','EUA');

--Tabela tbCategoria
INSERT INTO tbCategoria(idCategoria,nome,descricao)
values(5,'filosofia política','o');

INSERT INTO tbCategoria(idCategoria,nome,descricao)
values(2,'Shonem','o');

INSERT INTO tbCategoria(idCategoria,nome,descricao)
values(4,'Fantasia e Magia','o');

INSERT INTO tbCategoria(idCategoria,nome,descricao)
values(1,'Drama e Fantasia','o');

INSERT INTO tbCategoria(idCategoria,nome,descricao)
values(5,'Educação','o');

SELECT * FROM tbLivros;
SELECT * FROM tbAutor;
SELECT * FROM tbCategoria;
