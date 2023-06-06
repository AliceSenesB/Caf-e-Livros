CREATE DATABASE CaféELivros;

USE CaféELivros;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50),
email VARCHAR (45),
senha VARCHAR(7)
);

CREATE TABLE livros (
idLivro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
QtsPag VARCHAR(26),
autor VARCHAR(26)
);

CREATE TABLE dados(
idDados INT,
ritmoLeitura INT,
fkUsuario INT, 
	CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario)
		REFERENCES usuario(idUsuario),
fkLeitura INT, 
	CONSTRAINT fkLeitura FOREIGN KEY (fkLeitura)
		REFERENCES livros(idlivro),
CONSTRAINT pkComposta PRIMARY KEY (idDados, fkUsuario, fkLeitura)
);

select * from dados;
SELECT * FROM Livros;
select * from usuario;
