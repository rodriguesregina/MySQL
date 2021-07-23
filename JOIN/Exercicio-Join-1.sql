CREATE DATABASE db_generation_online_game1;
USE db_generation_online_game1;
CREATE TABLE tb_class(idclasse INT AUTO_INCREMENT,
nome VARCHAR(30),
arma VARCHAR(30),
escalao VARCHAR(30),
PRIMARY KEY(idclasse)
);

CREATE TABLE tb_person(idperson INT AUTO_INCREMENT,
nome VARCHAR(30),
cor_roupa VARCHAR(30),
ataque FLOAT,
defesa FLOAT,
fk_class INT,
PRIMARY KEY(idperson),
FOREIGN KEY(fk_class) REFERENCES tb_class(idclasse)
);

INSERT INTO tb_class(nome, arma, escalao)
VALUES('Charlie', 'AK47','Ouro'),
('Capitao Price', 'Fuzil','Prata'),
('Alex Mason', 'AK117','Bronze'),
('Capitao Woods', 'Men Of War','Ouro'),
('Mac Tavish', 'AK47','Ouro');

INSERT INTO tb_person(nome, cor_roupa, ataque, defesa, fk_class)
VALUES('Carolina', 'vermelha', 2000, 1000, 1),
('Black_lioness', 'azul', 3000, 1000, 3),
('Sulivan', 'preta', 1000, 2000, 2),
('Blue Angels', 'camuflada', 1000, 1000, 4),
('Leolind4', 'preta', 1500, 2000, 5);

SELECT * FROM tb_person WHERE ataque>2000;
SELECT * FROM tb_person WHERE defesa<2000 && defesa>1000;
SELECT * FROM tb_person;
SELECT * FROM tb_person WHERE nome LIKE 'C';
SELECT * FROM tb_person WHERE nome LIKE 'S%';
SELECT * FROM tb_person INNER JOIN tb_class;
