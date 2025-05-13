CREATE DATABASE db_ecommerce_instrumentos;

USE db_ecommerce_instrumentos;

CREATE TABLE  tb_instrumentos (
    id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    descricao text,
    preco decimal(10, 2) NOT NULL,
    estoque int  NOT NULL,
    tipo varchar(50) NOT NULL,
    PRIMARY KEY (id)
);


INSERT INTO tb_instrumentos (nome, descricao, preco, estoque, tipo) VALUES
('Guitarra Fender Stratocaster', 'Guitarra elétrica', 4500.00, 10, 'Cordas'),
('Piano Digital Yamaha P-125', 'Piano digital', 3200.00, 5, 'Teclas'),
('Bateria Acústica Pearl Export', 'Kit de bateria', 2800.00, 8, 'Percussão'),
('Violino Stradivarius Réplica', 'Violino Artesanal', 1800.00, 3, 'Cordas'),
('Teclado Launchkey 49', 'Teclado controlador', 800.00, 15, 'Teclas'),
('Saxofone Alto', 'Saxofone para iniciantes', 3500.00, 6, 'Sopro'),
('Flauta Transversal ', 'Flauta transversal para iniciantes', 1200.00, 10, 'Sopro'),
('Ukulele Soprano Mahalo', 'Ukulele ideal para começar', 250.00, 20, 'Cordas');

SELECT * FROM tb_instrumentos;

SELECT * FROM tb_instrumentos WHERE preco > 500;

SELECT * FROM tb_instrumentos WHERE preco < 500;

UPDATE tb_instrumentos SET estoque = 7 WHERE nome = 'Piano Digital Yamaha P-125';

SELECT * FROM tb_instrumentos WHERE nome = 'Piano Digital Yamaha P-125';
