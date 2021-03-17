/*
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com 
as informações dos alunos deste registro dessa escola. 
Crie uma tabela alunos/a e utilizando a habilidade de abstração e determine 5 atributos 
relevantes dos alunos/a para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as alunos/a com a nota maior do que 7.
Faça um select que retorne o/as alunos/a com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto 
e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database DB_RegistroEscola;

create table TB_Alunos(
matricula bigint auto_increment,
nome varchar(100) not null,
idade int not null,
classe varchar(5) not null,
notas decimal(2,2) not null,
primary key (matricula));

alter table TB_Alunos change column notas
notas decimal(3,1) not null;

insert into TB_Alunos(nome,idade,classe,notas)
values ('Paulo',10,'3F',10.0);
insert into TB_Alunos(nome,idade,classe,notas)
values ('João',12,'5A',5.5);
insert into TB_Alunos(nome,idade,classe,notas)
values ('Pedro',7,'1C',0.0);
insert into TB_Alunos(nome,idade,classe,notas)
values ('Rodrigo',10,'3D',7.6);
insert into TB_Alunos(nome,idade,classe,notas)
values ('Paula',15,'9C',10.0);
insert into TB_Alunos(nome,idade,classe,notas)
values ('Rogerio',15,'9C',9.0);
insert into TB_Alunos(nome,idade,classe,notas)
values ('Pablo',15,'9C',0.8);
insert into TB_Alunos(nome,idade,classe,notas)
values ('Pietra',15, '9D',8.9);

select * from TB_Alunos;

select notas from TB_Alunos where notas>7;
select notas from TB_Alunos where notas<7;

alter table TB_Alunos rename TB_Aluno;

select * From TB_Alunos;

select * From TB_Aluno;