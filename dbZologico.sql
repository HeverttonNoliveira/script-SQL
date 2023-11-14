-- 1. Crie uma database chamada ZOOLOGICO. 
DROP DATABASE dbZologico;
CREATE DATABASE dbZologico;
USE dbZologico;
-- 2. Na database ZOOLOGICO, crei uma tabela chamada ANIMAIS com os seguintes 
CREATE TABLE tbAnimais(
    codigo INT,
    tipo CHAR(15),
    nome CHAR(30),
    idade INT,
    valor DECIMAL(10,2)
);

INSERT INTO tbAnimais(codigo,tipo,nome,idade,valor)
values(1,'cachorro','Djudi',3,300.00);
INSERT INTO tbAnimais(codigo,tipo,nome,idade,valor)
values(2,'cachorro','Sula',5,300.00);
INSERT INTO tbAnimais(codigo,tipo,nome,idade,valor)
values(3,'cachorro','Sarina',7,300.00);
INSERT INTO tbAnimais(codigo,tipo,nome,idade,valor)
values(4,'gato','Pipa',2,500.00);
INSERT INTO tbAnimais(codigo,tipo,nome,idade,valor)
values(5,'gato','Sarangue',2,500.00);
INSERT INTO tbAnimais(codigo,tipo,nome,idade,valor)
values(6,'gato','Clarences',1,500.00);
INSERT INTO tbAnimais(codigo,tipo,nome,idade,valor)
values(7,'coruja','Agnes',0,700.00);
INSERT INTO tbAnimais(codigo,tipo,nome,idade,valor)
values(8,'coruja','Arabela',1,700.00);
INSERT INTO tbAnimais(codigo,tipo,nome,idade,valor)
values(9,'sapo','Quash',1,100.00);
INSERT INTO tbAnimais(codigo,tipo,nome,idade,valor)
values(10,'peixe','Fish',0,100.00);

-- 3. Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS. 
SELECT * FROM tbAnimais;

-- 4. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS, apresentando todos os registros da tabela.
SELECT tipo, nome FROM tbAnimais;

-- 5.Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela ANIMAIS, apresentado todos os registros.
SELECT tipo,nome,idade FROM tbAnimais;

-- 6. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias  [Tipo de Animal] e a coluna nome com o alias [Nome do Animal].
SELECT tipo as 'Tipo do Animal', nome as 'Nome do Animal' FROM tbAnimais;

-- 7. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela  ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias [Tipo de Animal], da coluna nome com o alias [Nome do Animal] e da coluna IDADE com o alias [Tempo de Vida].
SELECT tipo as 'Tipo do Animal', nome as 'Nome do Animal', idade as 'Tempo de Vida' FROM tbAnimais;

-- 8.Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma
SELECT 'Animais Domésticos' as 'Procedência', tipo as 'Tipo', nome as 'Nome', idade as 'Tempo de Vida' FROM tbAnimais;

-- 9.Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma
SELECT tipo as 'Tipo', nome as 'Nome', idade as "Idade", valor as 'Valor Original', valor * 1.10 as 'Valor de Vendas' FROM tbAnimais; 

-- 10.Escreva um comando que apresente os dados da tabela ANIMAIS como vemos a seguir, apresentando uma vez os dados repetidos.
SELECT tipo as 'Tipo', valor as 'Valor Original', valor * 1.10 as 'Valor de Venda' FROM tbAnimais;

