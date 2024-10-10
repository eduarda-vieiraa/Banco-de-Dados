CREATE DATABASE escola_de_idiomas
use escola_de_idiomas

CREATE TABLE professor (
id_professor INT PRIMARY KEY,
nome varchar(45),
salario varchar(45),
titulacao varchar(45)
);
CREATE TABLE aluno (
matricula INT PRIMARY KEY AUTO_INCREMENT,
nome varchar (45),
endereco varchar(45),
notas varchar(45)
);
CREATE TABLE curso (
id_curso INT PRIMARY KEY AUTO_INCREMENT,
frances varchar(45),
ingles varchar(45),
alemao varchar(45)
);
