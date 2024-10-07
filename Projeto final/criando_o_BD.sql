use jogos_bd;

CREATE TABLE jogos(
Id INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(100) NOT NULL,
Data_lancamento DATE,
Desenvolvedora VARCHAR(100) NOT NULL);

CREATE TABLE genero(
Id_genero INT AUTO_INCREMENT PRIMARY KEY,
Nome_genero VARCHAR(100) NOT NULL);

CREATE TABLE plataforma(
Id_plataforma INT AUTO_INCREMENT PRIMARY KEY,
Nome_plataforma VARCHAR(100) NOT NULL);

CREATE TABLE vendas(
Id_vendas INT AUTO_INCREMENT PRIMARY KEY,
ano INT,
quantidade INT,
Id_jogo INT);

show tables;