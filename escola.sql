CREATE DATABASE db_escola;

USE db_escola;


CREATE TABLE tb_estudantes(
    id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    data_nascimento date,
    matricula varchar(20) UNIQUE NOT NULL,
    nota_final decimal(3, 1),
  	PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, data_nascimento, matricula, nota_final) VALUES
('Ana Silva', '2005-03-10', 'MAT001', 8.5),
('Pedro Santos', '2004-11-25', 'MAT002', 6.8),
('Carla Oliveira', '2006-07-01', 'MAT003', 9.2),
('Lucas Pereira', '2005-05-18', 'MAT004', 7.5),
('Mariana Souza', '2004-09-03', 'MAT005', 5.9),
('Gustavo Rocha', '2006-01-15', 'MAT006', 8.0),
('Fernanda Alves', '2005-12-20', 'MAT007', 6.5),
('Thiago Costa', '2004-04-08', 'MAT008', 9.5);

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;


SELECT * FROM tb_estudantes WHERE nota_final < 7.0;


UPDATE tb_estudantes SET nota_final = 6.2 WHERE nome = 'Mariana Souza';

SELECT * FROM tb_estudantes WHERE nome = 'Mariana Souza';