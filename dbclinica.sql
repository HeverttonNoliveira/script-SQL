DROP DATABASE dbclinica;
CREATE DATABASE dbclinica;
USE dbclinica;
SHOW DATABASES;

CREATE TABLE tbMedico(
    idMedico INT,
    nmMedico VARCHAR(45),
    telMedico VARCHAR(9)
);

CREATE TABLE tbConsulta(
    idConsulta INT,
    dataConsulta DATETIME,
    MedicoIdMedico INT,
    PacienteIdPaciente INT,
    ReceitaMedicaIdReceitaMedica INT
);

CREATE TABLE tbPaciente(
idPaciente INT,
nmPaciente VARCHAR(45),
telPaciente VARCHAR(9),
convenio VARCHAR(45)
);

CREATE TABLE tbRecitaMedica(
    idReceitaMedica INT,
    descricao VARCHAR(500)
);

SHOW tables;

-- tbMedico
INSERT INTO tbMedico(idMedico,nmMedico,telMedico)
values(1,'Ada Wong','94524-1389');
INSERT INTO tbMedico(idMedico,nmMedico,telMedico)
values(2,'Diane','99420-7554');
INSERT INTO tbMedico(idMedico,nmMedico,telMedico)
values(3,'Arthur','96603-0791');
INSERT INTO tbMedico(idMedico,nmMedico,telMedico)
values(4,'Bruce','99890-9091');
INSERT INTO tbMedico(idMedico,nmMedico,telMedico)
values(5,'Ashely','94587-9812');

-- tbConsulta
INSERT INTO tbConsulta(idConsulta,dataConsulta,MedicoIdMedico,PacienteIdPaciente,ReceitaMedicaIdReceitaMedica)
values(1,'2023/05/1 10:20:35',1,1,1);
INSERT INTO tbConsulta(idConsulta,dataConsulta,MedicoIdMedico,PacienteIdPaciente,ReceitaMedicaIdReceitaMedica)
values(2,'2023/04/2 20:30:00',2,2,2);
INSERT INTO tbConsulta(idConsulta,dataConsulta,MedicoIdMedico,PacienteIdPaciente,ReceitaMedicaIdReceitaMedica)
values(3,'2023/01/23 12:00:40',3,3,3);
INSERT INTO tbConsulta(idConsulta,dataConsulta,MedicoIdMedico,PacienteIdPaciente,ReceitaMedicaIdReceitaMedica)
values(4,'2023/07/12 13:50:59',4,4,4);
INSERT INTO tbConsulta(idConsulta,dataConsulta,MedicoIdMedico,PacienteIdPaciente,ReceitaMedicaIdReceitaMedica)
values(5, '2023/09/17 14:08:55',5,5,5);

-- tdPaciente
INSERT INTO tbPaciente(idPaciente,nmPaciente,telPaciente,convenio)
values(1,'Abigail','98454-8913','SulAmerica');
INSERT INTO tbPaciente(idPaciente,nmPaciente,telPaciente,convenio)
values(2,'Kassadran','97543-1289','SulAmerica');
INSERT INTO tbPaciente(idPaciente,nmPaciente,telPaciente,convenio)
values(3,'Leo','96543-8954','SulAmerica');
INSERT INTO tbPaciente(idPaciente,nmPaciente,telPaciente,convenio)
values(4,'Fernanda','98877-7667','SulAmerica');
INSERT INTO tbPaciente(idPaciente,nmPaciente,telPaciente,convenio)
values(5,'Barbara','97654-1245','SulAmerica');

-- tdReceitaMedica
INSERT INTO tbRecitaMedica(idReceitaMedica,descricao)
values(1,'dipirona e loratadina');
INSERT INTO tbRecitaMedica(idReceitaMedica,descricao)
values(2,'pomada para dor muscular');
INSERT INTO tbRecitaMedica(idReceitaMedica,descricao)
values(3,'loratadina');
INSERT INTO tbRecitaMedica(idReceitaMedica,descricao)
values(4,'Omeprazol 20mg');
INSERT INTO tbRecitaMedica(idReceitaMedica,descricao)
values(5,'Dorflez');

SELECT * FROM tbMedico;
SELECT * FROM tbConsulta;
SELECT * FROM tbPaciente;
SELECT * FROM tbRecitaMedica;
