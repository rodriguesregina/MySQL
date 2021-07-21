#Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
#informações dos produtos deste ecommerce.
#relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
#Popule esta tabela com até 8 dados;
#Faça um select que retorne os produtos com o valor menor do que 500.

use db_empresa1;
create table produtos(idproduto int (5) auto_increment,
nome varchar(20),
cor varchar(10),
tamanho varchar(10),
marca varchar(10),
preco double,
primary key(idproduto)
);

drop table produtos;
insert into produtos (nome, cor, tamanho, marca, preco)
values('camiseta', 'azul', 'media', 'nike', 200),
('calca', 'preta', 'g', 'Adidas', 600),
('relogio', 'dourado', 'media', 'rollex', 500),
('tenis', 'preto', 'media', 'nike', 300),
('oculos', 'azul', 'pequena', 'oakley', 700);

select * from db_empresa1.produtos;
select * from db_empresa1.produtos where preco <500;







