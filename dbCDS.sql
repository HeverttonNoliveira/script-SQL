DROP DATABASE dbcds;
CREATE DATABASE dbcds;
USE dbcds;



-- Tabelas
CREATE TABLE tbArtistas(
    CodArt INT NOT NULL AUTO_INCREMENT,
    NomeArt VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (codArt)
);

CREATE TABLE tbGravadoras(
    codGrav INT NOT NULL AUTO_INCREMENT,
    NomeGrav VARCHAR(100)NOT NULL UNIQUE,
    PRIMARY KEY (codGrav)
);

CREATE TABLE tbCategorias(
    codCat INT NOT NULL AUTO_INCREMENT,
    NomeCat VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (codCat)
);

CREATE TABLE tbEstado(
    siglaEst CHAR(2)NOT NULL,
    NomeEst VARCHAR(50)NOT NULL UNIQUE,
    PRIMARY KEY (siglaEst)
);

CREATE TABLE tbCidades(
    codCid INT NOT NULL AUTO_INCREMENT,
    NomeCid VARCHAR(50) NOT NULL,
    siglaEst CHAR(2) NOT NULL,
    PRIMARY KEY(codCid),
    FOREIGN KEY (siglaEst) REFERENCES tbEstado (siglaEst)
);

INSERT INTO tbCidades ( siglaEst,NomeArt ) VALUES('SP','SÃO PAULO');
INSERT INTO tbCidades ( siglaEst,NomeArt ) VALUES('SP','SOROCABA');
INSERT INTO tbCidades ( siglaEst,NomeArt ) VALUES('SP','JUNDIAÍ');
INSERT INTO tbCidades ( siglaEst,NomeArt ) VALUES('SP','AMERICANA');
INSERT INTO tbCidades ( siglaEst,NomeArt ) VALUES('SP','ARARAQUARA');
INSERT INTO tbCidades ( siglaEst,NomeArt ) VALUES('MG','OURO PRETO');
INSERT INTO tbCidades ( siglaEst,NomeArt ) VALUES('ES','CACHOEIRA DO ITAPEMIRIM');

CREATE TABLE tbClientes(
    codCli INT NOT NULL AUTO_INCREMENT,
    nomeCli VARCHAR(50) NOT NULL,
    endCli VARCHAR(100) NOT NULL,
    rendaCli VARCHAR(100) NOT NULL DEFAULT 0 CHECK(rendaCli >=0),
    sexoCli CHAR(1) NOT NULL DEFAULT 'F' CHECK(sexoCli IN('F','M')),
    codCid INT NOT NULL,
    PRIMARY KEY (codCli),
    FOREIGN KEY (codCid) REFERENCES tbCidades (codCid)
);

CREATE TABLE tbConjuge(
    codConj INT NOT NULL AUTO_INCREMENT,
    nomeConj VARCHAR(50) NOT NULL,
    rendaConj DECIMAL(9,2) NOT NULL DEFAULT 0 CHECK(rendaConj >=0),
    sexoConj CHAR(1) NOT NULL DEFAULT 'F' CHECK(sexoConj IN('F','M')),
    codCli INT NOT NULL,
    PRIMARY KEY (codConj),
    FOREIGN KEY (codCli) REFERENCES tbClientes (codCli)
);

CREATE TABLE tbFuncionarios(
    codFunc INT NOT NULL AUTO_INCREMENT,
    nomeFunc VARCHAR(50)NOT NULL,
    endFunc VARCHAR(100)NOT NULL,
    salFunc DECIMAL(9.2)NOT NULL DEFAULT 0 CHECK (salFunc >=0),
    sexoFunc CHAR(1)NOT NULL DEFAULT 'F' CHECK (sexoFunc IN('F','M')),
    PRIMARY KEY (codFunc)
);

CREATE TABLE tbDependentes(
    CodDep INT NOT NULL AUTO_INCREMENT,
    nomeCD VARCHAR(50) NOT NULL UNIQUE,
    valCD DECIMAL(9,2) NOT NULL CHECK(valCD >=0),
    qtdEstq INT NOT NULL CHECK (qtdEstq >=0),
    codCat INT NOT NULL,
    codGrav INT NOT NULL,
    PRIMARY KEY (CodDep),
    FOREIGN KEY (codCat) REFERENCES tbCategorias (codCat),
    FOREIGN KEY (codGrav) REFERENCES tbGravadoras (codGrav)
);

CREATE TABLE tbTitulos(
    codTit INT NOT NULL,
    nomeCD VARCHAR(50)NOT NULL UNIQUE,
    valCD DECIMAL(9,2)NOT NULL CHECK(valCD >0),
    qtdEstq INT NOT NULL CHECK(qtdEstq >=0),
    codCat INT NOT NULL,
    codGrav INT NOT NULL,
    PRIMARY KEY (codTit),
    FOREIGN KEY (codCat) REFERENCES tbCategorias (codCat),
    FOREIGN KEY (codGrav) REFERENCES tbGravadoras (codGrav)
);

CREATE TABLE tbPedidos(
    numPed INT NOT NULL AUTO_INCREMENT,
    dataPed datetime NOT NULL,
    valPed DECIMAL(9,2) NOT NULL DEFAULT 0 CHECK(valPed >=0),
    codCli int NOT NULL,
    codFunc INT NOT NULL,
    PRIMARY KEY (numPed),
    FOREIGN KEY (codCli) REFERENCES tbClientes (codCli),
    FOREIGN KEY (codFunc) REFERENCES tbFuncionarios (codFunc)
);

CREATE TABLE tbTitulosPedidos(
    qtdCD int not null check(qtdCD >=1),
    valCD decimal(9,2) not null check(valcd >0),
    numPed int not null,
    codTit int not null,
    FOREIGN KEY (numPed) REFERENCES tbPedidos (numPed),
    FOREIGN KEY (codTit) REFERENCES tbTitulos (codTit)
);

CREATE TABLE tbTitulosArtista(
    codTit int NOT NULL,
    codArt int NOT NULL,
    FOREIGN KEY (codTit) references tbTitulos (codTit),
    FOREIGN KEY (codArt) references tbArtistas (codArt)
);


-- Insert
INSERT INTO tbArtistas ( NomeArt ) VALUES( 'MARISA MONTE' );
INSERT INTO tbArtistas ( NomeArt ) VALUES( 'GILBERTO GIL');
INSERT INTO tbArtistas ( NomeArt ) VALUES( 'CAETANO VELOSO');
INSERT INTO tbArtistas ( NomeArt ) VALUES( 'MILTON NASCIMENTO');
INSERT INTO tbArtistas ( NomeArt ) VALUES( 'LEGIÃO URBANA');
INSERT INTO tbArtistas ( NomeArt ) VALUES( 'THE BEATLES' );
INSERT INTO tbArtistas ( NomeArt ) VALUES( 'RITA LEE');

INSERT INTO tbGravadoras ( NomeGrav ) VALUES('POLYGRAM');
INSERT INTO tbGravadoras ( NomeGrav ) VALUES('EMI');
INSERT INTO tbGravadoras ( NomeGrav ) VALUES('SOM LIVRE');
INSERT INTO tbGravadoras ( NomeGrav ) VALUES('SOM MUSIC');

INSERT INTO tbCategorias ( NomeCat ) VALUES('MPB');
INSERT INTO tbCategorias ( NomeCat ) VALUES('TRILHA SONORA');
INSERT INTO tbCategorias ( NomeCat ) VALUES('ROCK INTERNACIONAL');
INSERT INTO tbCategorias ( NomeCat ) VALUES('ROCK NACIONAL ');

INSERT INTO tbEstado ( siglaEst,NomeEst ) VALUES('SP','São Paulo');
INSERT INTO tbEstado ( siglaEst,NomeEst ) VALUES('MG','Minas Gerais');
INSERT INTO tbEstado ( siglaEst,NomeEst ) VALUES('RJ','Rio de Janeiro');


SHOW TABLES;
DESC tbArtistas;
DESC tbGravadoras;
DESC tbCategorias;
DESC tbEstado;
DESC tbCidades;
DESC tbClientes;
DESC tbConjuge;
DESC tbFuncionarios;
DESC tbDependentes;
DESC tbTitulos;
DESC tbPedidos;

SELECT * FROM tbArtistas;