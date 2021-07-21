CREATE database db_empresa1;
use db_empresa1;
create table tb_funcionario (id int (5) auto_increment primary key,
nome varchar(50),
cpf varchar(11),
idade varchar(2),
salario int(10)
);
drop database db_empresa1;
drop table tb_funcionario;
insert into db_empresa1.tb_funcionario(id, nome, cpf, idade, salario)
values(10, 'Regina', '12345678911', '25', 1500 ),
(11, 'Rafael', '12345678781', '30', 1400 ),
(12, 'Carlos', '34562347876', '35', 1300),
(13, 'Maria', '67543218907', '28', 1600),
(14, 'Thiago', '87654345678', '35', 2000);

select * from db_empresa1.tb_funcionario;
select * from db_empresa1.tb_funcionario where salario >=2000;
select * from db_empresa1.tb_funcionario where salario <=2000;


update tb_funcionario set salario=2200 where id = '11';




