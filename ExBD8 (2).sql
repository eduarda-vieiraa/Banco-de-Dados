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



