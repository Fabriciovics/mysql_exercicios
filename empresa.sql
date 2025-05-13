CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
cargo varchar(255) NOT NULL, 
dtadmissao date NULL,
salario decimal(10, 3),
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios (nome, cargo, dtadmissao, salario)
VALUES ("João Santos", "Operador A", "2020-07-09", 3.589);

INSERT INTO tb_funcionarios (nome, cargo, dtadmissao, salario)
VALUES ("Amanda Pereira", "Analista QA", "2023-10-06", 4.555);

INSERT INTO tb_funcionarios (nome, cargo, dtadmissao, salario)
VALUES ("Wesley Pereira", "Operador C", "2023-07-11", 1.587);

INSERT INTO tb_funcionarios (nome, cargo, dtadmissao, salario)
VALUES ("Natalia Lima", "Supervisora", "2016-10-03", 11.754);

INSERT INTO tb_funcionarios (nome, cargo, dtadmissao, salario)
VALUES ("Marcelo Almeida", "Eletricista", "2019-07-13", 5.553);

SELECT * FROM tb_funcionarios;

SELECT  CONCAT('R$ ', FORMAT(salario, 3)) AS salario_formatado
FROM tb_funcionarios;

SELECT * FROM tb_funcionarios
WHERE salario > 2.000;

SELECT * FROM tb_funcionarios
WHERE salario < 2.000;

UPDATE tb_funcionarios SET salario = 6.342
WHERE nome = "Marcelo Almeida";

SELECT * FROM tb_funcionarios WHERE nome = "Marcelo Almeida";
