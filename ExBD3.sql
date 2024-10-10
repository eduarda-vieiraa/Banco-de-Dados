CREATE database escolas_de_idiomas;
use escolas_de_idiomas;

CREATE TABLE professor (
id_prof INT primary key auto_increment,
nome varchar(45),
salario varchar(45),
titulacao varchar(45));

CREATE TABLE ALUNO (
matricula INT PRIMARY KEY,
nome varchar(45),
endereco varchar(45),
notas varchar(45)); 

CREATE TABLE CURSO (
id_curso INT PRIMARY KEY AUTO_INCREMENT,
frances varchar(45),
ingles varchar(45),
alemao varchar(45));
