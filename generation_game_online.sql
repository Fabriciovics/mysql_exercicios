CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
  id BIGINT  AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  tipo VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
  );

INSERT INTO tb_classes (nome, tipo) VALUES
('Guerreiro', 'Melee'),
('Mago', 'Mágico'),
('Arqueiro', 'Ranged'),
('Caçador', 'Melee'),
('Clérigo', 'Suporte');


CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Cuca', 10, 2500, 1800, 1),
('Trevor', 12, 2100, 1500, 2),
('Legolas', 9, 1900, 1200, 3),
('CJ', 8, 1700, 1100, 4),
('Mickey', 11, 2300, 1600, 3),
('Uther', 10, 1500, 2000, 5),
('Hercules', 9, 2200, 1300, 1),
('Xena', 13, 2600, 1400, 2);

SELECT nome FROM tb_personagens WHERE poder_ataque > 2000;

SELECT nome FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT nome FROM tb_personagens WHERE nome LIKE '%m%';

SELECT tp.nome AS nome_personagem, tp.nivel, tp.poder_ataque, tp.poder_defesa, tc.nome AS nome_classe, tc.tipo
FROM tb_personagens tp INNER JOIN tb_classes tc ON tp.classe_id = tc.id;

SELECT tp.nome AS nome_personagem, tp.nivel, tc.nome AS nome_classe FROM tb_personagens tp
INNER JOIN tb_classes tc ON tp.classe_id = tc.id WHERE tc.nome = 'Arqueiro';




