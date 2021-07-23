create database db_registro;
use db_registro;
create table tb_alunes( idalunes bigint (5) auto_increment,
nome varchar(50) not null,
cpf varchar(11),
idade int,
nota float not null,
primary key (idalunes)
);
select * from tb_alunes;

UPDATE `db_registro`.`tb_alunes` SET `nota` = '9' WHERE (`idalunes` = '30');

select * from tb_alunes where nota < 7;
select * from tb_alunes where nota > 7;

