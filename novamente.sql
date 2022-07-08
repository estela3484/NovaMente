CREATE DATABASE NOVAMENTE;
USE NOVAMENTE;

CREATE TABLE USUARIO(
ID_USUARIO INT PRIMARY KEY AUTO_INCREMENT,
NOME VARCHAR(80) NOT NULL,
EMAIL VARCHAR(100) UNIQUE,
SENHA VARCHAR(8) NOT NULL,
DATA_ATIVACAO DATE
);

CREATE TABLE PROFISSIONAL(
ID_USUARIO INT,
ID_ENDERECO INT,
ID_PROFISSIONAL INT PRIMARY KEY AUTO_INCREMENT,
ESPECIALIDADE VARCHAR(80),
CRM CHAR(6) UNIQUE,
CRP VARCHAR(15) UNIQUE,
TELEFONE BIGINT(14) NOT NULL,
FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO(ID_USUARIO), 
FOREIGN KEY (ID_ENDERECO) REFERENCES ENDERECO(ID_ENDERECO) 
);

CREATE TABLE CLIENTE(
ID_USUARIO INT,
ID_ENDERECO INT,
ID_CLIENTE INT PRIMARY KEY AUTO_INCREMENT,
CPF CHAR(11) UNIQUE,
TELEFONE BIGINT(14) NOT NULL,
FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO(ID_USUARIO),
FOREIGN KEY (ID_ENDERECO) REFERENCES ENDERECO(ID_ENDERECO) 
);

CREATE TABLE ENDERECO(
ID_ENDERECO INT PRIMARY KEY AUTO_INCREMENT,
LOGRADOURO VARCHAR(20),
NUMERO VARCHAR(20),
BAIRRO VARCHAR(30),
CIDADE VARCHAR(30),
UF CHAR(2),
CEP VARCHAR(9)
);

CREATE TABLE AGENDAMENTO (
ID_PROFISSIONAL INT,
ID_CLIENTE INT,
ID_AGENDAMENTO INT PRIMARY KEY AUTO_INCREMENT,
DATA_HORA DATETIME,
URL_CONSULTA VARCHAR(100)
);






