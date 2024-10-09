drop DATABASE empresa;
create database empresa;
use empresa;

CREATE TABLE funcionarios (
    id_funcionarios INT PRIMARY KEY,
    nome VARCHAR(45),
    cargo VARCHAR(45)
);

CREATE TABLE dependentes (
    id_dependentes INT PRIMARY KEY,
    parentesco VARCHAR(45),
    nome VARCHAR(45)
);

CREATE TABLE podem_ter (
    id_dependentes INT,
    id_funcionarios INT,
    PRIMARY KEY (id_dependentes, id_funcionarios),
    FOREIGN KEY (id_dependentes) REFERENCES dependentes(id_dependentes),
    FOREIGN KEY (id_funcionarios) REFERENCES funcionarios(id_funcionarios)
);

CREATE TABLE departamento (
id_departamento INT PRIMARY KEY,
nome varchar(45)
);

CREATE TABLE contem (
id_departamento INT,
id_funcionarios INT,
PRIMARY KEY (id_departamento, id_funcionarios),
FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
FOREIGN KEY (id_funcionarios) REFERENCES funcionarios(id_funcionarios)
);

CREATE TABLE diretoria (
id_deretoria INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(45)
);

CREATE TABLE pertence_a (
id_deretoria INT,
id_departamento INT,
PRIMARY KEY (id_deretoria, id_departamento),
FOREIGN KEY (id_deretoria) REFERENCES diretoria(id_deretoria),
FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);
