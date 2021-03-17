create database DB_RH;
/*Crie um banco de dados para um serviço de RH de uma empresa, 
onde o sistema trabalhará com as informações dos funcionários desta empresa. 
Crie uma tabela de funcionários e utilizando a habilidade de abstração e 
determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionários com o salário maior do que 2000.
Faça um select que retorne os funcionários com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo.
SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.

*/


use DB_RH;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(200) not null,
ativo boolean not null,
salario float not null,
funcao varchar(58) not null,
primary key(id)
);

insert into tb_funcionarios(nome, ativo, salario,funcao) values("Diego",true,4000.00,"FullStackJr");
insert into tb_funcionarios(nome, ativo, salario,funcao) values("Nico",true,10000.00,"FullStackJr");
insert into tb_funcionarios(nome, ativo, salario,funcao) values("Matheus",true,9000.00,"FullStackJr");
insert into tb_funcionarios(nome, ativo, salario,funcao) values("DarkZin",true,12000.00,"FullStackJr");
insert into tb_funcionarios(nome, ativo, salario,funcao) values("ED",true,20000.00,"FullStackSenior");

select * from tb_funcionarios;
select * from tb_funcionarios where salario >2000;
select * from tb_funcionarios where salario <2000;

update tb_funcionarios 
set nome = "Alonso" where id =1;