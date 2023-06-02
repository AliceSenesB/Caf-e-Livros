CREATE DATABASE CaféELivros;

USE CaféELivros;

CREATE TABLE usuarios(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
CPF CHAR(11),
telefone CHAR(11),
email VARCHAR (45),
senha VARCHAR(10)
);

CREATE TABLE quiz (
idQuiz INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
dtCriacao DATE 
);

CREATE TABLE resultados(
idResultado INT PRIMARY KEY AUTO_INCREMENT,
dtHora DATETIME default current_timestamp, 
personagem VARCHAR(26),
fkQuiz INT, 
	CONSTRAINT fkQuiz FOREIGN KEY (fkQuiz)
		REFERENCES quiz(idQuiz),
fkUsuario INT, 
	CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario)
		REFERENCES usuarios(idUsuario)
);

CREATE TABLE livros (
idLivro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
genero VARCHAR(26),
classificacaoIndicativa VARCHAR(6),
autor VARCHAR(26),
fkUsuario2 INT, 
	CONSTRAINT fkUsuario2 FOREIGN KEY (fkUsuario2)
		REFERENCES usuarios(idUsuario)
);

