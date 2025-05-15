
CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100),
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Bovino', 'carne de boi'),
('Suíno', 'carne de porco'),
('Aves', 'frango e outras aves'),
('Frutas', 'frutas frescas'),
('Verduras', 'folhas e legumes');

CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    data_validade DATE,
    categoria_id BIGINT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome, preco, estoque, data_validade, categoria_id) VALUES
('Picanha', 75.99, 50, '2025-05-20', 1),
('Costela Suína', 39.50, 80, '2025-05-18', 2),
('Peito de Frango', 25.00, 120, '2025-05-17', 3),
('Maçã Gala', 5.50, 200, '2025-05-25', 4),
('Alface Crespa', 3.20, 150, '2025-05-16', 5),
('Linguiça Toscana', 28.75, 90, '2025-05-19', 2),
('Coxa de Frango', 18.90, 110, '2025-05-18', 3),
('Banana Prata', 4.80, 250, '2025-05-22', 4);

SELECT nome FROM tb_produtos WHERE preco > 50.00;

SELECT nome FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT nome FROM tb_produtos WHERE nome LIKE '%a%';

SELECT tp.nome AS nome_produto, tp.preco, tp.estoque, tc.nome AS nome_categoria, tc.descricao AS descricao_categoria
FROM tb_produtos tp INNER JOIN tb_categorias tc ON tp.categoria_id = tc.id_categoria;


SELECT tp.nome AS nome_produto, tp.preco, tc.nome AS nome_categoria FROM tb_produtos tp
INNER JOIN tb_categorias tc ON tp.categoria_id = tc.id_categoria WHERE tc.nome IN ('Aves', 'Frutas');


