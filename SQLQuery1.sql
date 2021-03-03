--DDL - DATA DEFINITION LANGUAGE
CREATE DATABASE SENAI_HROADS_TARDE;

USE SENAI_HROADS_TARDE;

CREATE TABLE TiposHabilidades
(
	-- NomeColuna		Tipo	CHAVE PRIM�RIA		AUTOINCREMENTA
	IdTipo				INT		PRIMARY KEY			IDENTITY,
								
										-- OBRIGAT�RIO 
	Tipo				VARCHAR(150)	NOT NULL
);

CREATE TABLE Habilidades
(
	IdHabilidade		INT		PRIMARY KEY			IDENTITY,
	IdTipo				INT		FOREIGN KEY			REFERENCES TiposHabilidades (IdTipo),
	Nome				VARCHAR (150)	NOT NULL
);
CREATE TABLE Classes
(	
	IdClasse			INT		PRIMARY KEY			IDENTITY,
	Nome				VARCHAR(150)	NOT NULL
);
CREATE TABLE ClassesHabilidades
(
	IdClasse			INT		FOREIGN KEY			REFERENCES Classes (IdClasse),
	IdHabilidade		INT		FOREIGN KEY			REFERENCES Habilidades (IdHabilidade)		

);
CREATE TABLE Personagens
(
	IdPersonagem		INT		PRIMARY KEY			IDENTITY,
	IdClasse			INT		FOREIGN KEY			REFERENCES Classes (IdClasse),
	Nome				VARCHAR(150) NOT NULL,
	CapacidadeMaxVida	INT		NOT NULL,
	CapacidadeMaxMana	INT		NOT NULL,
	DataAtualiz			DATE	NOT NULL,
	DataCriacao			DATE	NOT NULL

);