-- Criando o banco de dados
CREATE DATABASE DBBarbearia;

-- Acessando o banco de dados
USE DBBarbearia;

-- Criando a tabela Cliente
CREATE TABLE Cliente (
    CodigoDoCliente INT PRIMARY KEY AUTO_INCREMENT,
    NomeDoCliente VARCHAR(255),
    TelCelDoCliente VARCHAR(20),
    EmailDoCliente VARCHAR(255),
    ValorDoTipoDeCorte DECIMAL(10, 2),
    Endereco VARCHAR(255),
    Municipio VARCHAR(255)
);

-- Criando a tabela Funcionários
CREATE TABLE Funcionarios (
    CodigoDoFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    NomeDoFuncionario VARCHAR(255),
    TelCelDoFuncionario VARCHAR(20),
    EmailDoFuncionario VARCHAR(255),
    RG VARCHAR(20),
    CPF VARCHAR(20),
    Endereco VARCHAR(255),
    CEP Varchar(20),
    Municipio VARCHAR(255),
    Especialidade VARCHAR(255)
);

-- Criando a tabela Agendamentos
CREATE TABLE Agendamentos (
    CodigoDoAgendamento INT PRIMARY KEY AUTO_INCREMENT,
    CodigoDoCliente INT,
    DataDeAgendamento DATETIME,
    EnderecoDaUnidade VARCHAR(500),
    TipoDeCorteDoCliente VARCHAR(255),
    ValorDoCorte DECIMAL(10, 2),
    FOREIGN KEY (CodigoDoCliente) REFERENCES Cliente(CodigoDoCliente)
);

-- Criando a tabela Balanço Mensal
CREATE TABLE BalancoMensal (
    CodigoDoMunicipio INT PRIMARY KEY AUTO_INCREMENT,
    NomeDoMunicipio VARCHAR(255),
    EnderecoDaUnidade VARCHAR(500), -- Ajustado para um tamanho maior, ajuste conforme necessário
    ValorTotalDoMes DECIMAL(10, 2),
    ValorTotalDeDespesas DECIMAL(10, 2),
    ValorLiquidoDoMes DECIMAL(10, 2),
    TipoDeCorteDoCliente VARCHAR(255)
);

-- Criando a tabela Despesas
CREATE TABLE Despesas (
    CodigoDaDespesa INT PRIMARY KEY AUTO_INCREMENT,
    CodigoDoMunicipio INT,
    EnderecoDaUnidade VARCHAR(500), -- Ajustado para um tamanho maior, ajuste conforme necessário
    Aluguel DECIMAL(10, 2),
    Agua DECIMAL(10, 2),
    Luz DECIMAL(10, 2),
    Salario DECIMAL(10, 2),
    DecimoTerceiro DECIMAL(10, 2),
    TotalDespesa DECIMAL(10, 2),
    FOREIGN KEY (CodigoDoMunicipio) REFERENCES BalancoMensal(CodigoDoMunicipio)
);



-- Criação de usuário Padrão abaixo.

-- Server=localhost;Database=dbbarbearia;Uid=gabriel;Pwd=p1ctasuncservant;

-- Alteração na tabela Cliente
-- ALTER TABLE Cliente
-- ADD CEP VARCHAR(10),
-- ADD Telefone VARCHAR(20),
-- ADD INDEX idx_Endereco_Cliente (Endereco); -- Adicionando um índice para melhorar a eficiência em pesquisas no campo Endereco

-- Alteração na tabela Funcionarios
-- ALTER TABLE Funcionarios
-- ADD CEP VARCHAR(10),
-- ADD Telefone VARCHAR(20),
-- ADD INDEX idx_Endereco_Funcionarios (Endereco); -- Adicionando um índice para melhorar a eficiência em pesquisas no campo Endereco

-- Alteração na tabela BalancoMensal
-- ALTER TABLE BalancoMensal
-- ADD CEP VARCHAR(10),
-- ADD Telefone VARCHAR(20),
-- ADD INDEX idx_Endereco_BalancoMensal (Endereco); -- Adicionando um índice para melhorar a eficiência em pesquisas no campo Endereco

-- Alteração na tabela Despesas
-- ALTER TABLE Despesas
-- ADD DespesasAdicionais DECIMAL(10, 2);

-- Lembre-se de que, ao adicionar índices, pode haver um impacto na performance durante a atualização ou inserção de dados, mas eles geralmente melhoram a eficiência de consultas, 
-- especialmente em grandes conjuntos de dados.