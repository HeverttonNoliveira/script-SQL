DROP DATABASE dbcinema;

CREATE DATABASE dbcinema;
USE dbcinema;

CREATE TABLE tbFuncionarios(
    codigo int,
    nome VARCHAR(45),
    email VARCHAR(45),
    telCel CHAR(10)
);

INSERT INTO tbFuncionarios(codigo,nome,email,telCel)
values(1,'Abigail','abigail@hotmail.com','94524-1389');
INSERT INTO tbFuncionarios(codigo,nome,email,telCel)
values(2,'John','john@hotmail.com','94524-1389');
INSERT INTO tbFuncionarios(codigo,nome,email,telCel)
values(3,'Arthur','abigail@hotmail.com','94524-1389');
INSERT INTO tbFuncionarios(codigo,nome,email,telCel)
values(4,'Arthur','abigail@hotmail.com','94524-1389');
INSERT INTO tbFuncionarios(codigo,nome,email,telCel)
values(5,'Arthur','abigail@hotmail.com','94524-1389');


SELECT * FROM tbFuncionarios;

-- ALTERANDO REGISTROS NAS TABELAS CRIAADAS

UPDATE tbFuncionarios SET nome = 'Abigail Oliveira'
    WHERE codigo =1;
UPDATE tbFuncionarios SET nome = 'John Smith', telCel = '95769-8997'
    WHERE codigo =2;
UPDATE tbFuncionarios SET nome = 'Arthur', email = 'arthur@gmail.com'
    WHERE codigo =3;
UPDATE tbFuncionarios SET nome = 'Leonardo', email = 'leoSilva@outlook.com', telCel = '98725-6742'
    WHERE codigo =4;
UPDATE tbFuncionarios SET nome = 'Fernanda', email = 'Fefe@gmail.com', telCel = '97652-2367'
    WHERE codigo =5;


SELECT * FROM tbFuncionarios;

DELETE FROM tbFuncionarios WHERE codigo = 5;

SELECT * FROM tbFuncionarios;

-- Buscando valores e alterando o cabeçalho das tablas
SELECT codigo as 'Codigo', nome as 'Nome', telCel as 'Celular' FROM tbFuncionarios;

