create database db_pizzaria_legal;
use db_pizzaria_legal;

CREATE TABLE tb_categoria(id_categoria INT AUTO_INCREMENT,
categoria VARCHAR(50),
bebidas VARCHAR(50),
sobremesas VARCHAR(50),
PRIMARY KEY(id_categoria)
);

CREATE TABLE tb_pizzaria(id_pizzaria INT AUTO_INCREMENT,
sabor VARCHAR(50),
tamanho VARCHAR(50),
borda VARCHAR(50),
acompanhamentos VARCHAR(50),
preco FLOAT,
fk_categoria INT,
PRIMARY KEY(id_pizzaria),
FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria(categoria, bebidas, sobremesas)
VALUES('entrega', 'refrigerante', 'sorvete'),
('comer no local', 'cerveja', 'bolo'),
('comer no local', 'refrigerante', 'pudim'),
('entrega', 'refrigerante', 'sorvete'),
('comer no local', 'cerveja', 'bolo');

INSERT INTO tb_pizzaria(sabor, tamanho, borda, acompanhamentos, preco)
VALUES('calabresa', 'G', 'catupiry', 'cebola', 47.00),
('calabacon', 'B', 'cheddar', 'cebola', 46.00),
('frango', 'G', 'catupiry', 'milho', 49.00),
('mussarela', 'G', 'provolone', 'cebola', 35.00),
('calabresa', 'P', 'catupiry', 'cebola', 45.00),
('portuguesa', 'G', 'cheddar', 'milho', 50.00),
('baiana', 'G', 'catupiry', 'milho', 42.00),
('frango com milho', 'G', 'cheddar', 'alho', 43.00);

SELECT * FROM tb_categoria;
SELECT * FROM tb_pizzaria;
SELECT * FROM tb_pizzaria WHERE preco>40;
SELECT * FROM tb_pizzaria WHERE preco>=30 AND preco<=45;
SELECT * FROM tb_categoria INNER JOIN tb_pizzaria;
SELECT * FROM tb_categoria INNER JOIN tb_pizzaria ON sabor LIKE 'sorvete';
SELECT * FROM tb_categoria INNER JOIN tb_pizzaria ON sabor LIKE '%C';

