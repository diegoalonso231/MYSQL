/*
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações 
dos produtos deste ecommerce. 
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 
5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database DB_Ecommerce;
use DB_Ecommerce;
create table TB_Produtos(
id bigint auto_increment,
nomeP varchar(30) not null,
idadeP int not null,
preco decimal(5,2) not null,
lojaP varchar(10)  not null,
primary key (id)
);

alter table TB_Produtos change column lojaP
lojaP varchar(100) not null;

insert into TB_Produtos (nomeP, idadeP, preco, lojaP)
values ('Buster de cartas Magic',08,15.50,'LojaShoppingABC');

alter table TB_Produtos change column preco
precoP decimal(5,2) not null;

insert into TB_Produtos (nomeP, idadeP, precoP, lojaP)
values ('Deck de cartas Magic',08,60.00,'LojaShoppingABC');

insert into TB_Produtos (nomeP, idadeP, precoP, lojaP)
values ('Dado D4',3,4.00,"LojaCasaDosRPG");

insert into TB_Produtos (nomeP, idadeP, precoP, lojaP)
values ('Dado D6',3,4.60,'LojaCasaDosRPG');

insert into TB_Produtos (nomeP, idadeP, precoP, lojaP)
values ('Dado D12',3,5.20,'LojaCasaDosRPG');

insert into TB_Produtos (nomeP, idadeP, precoP, lojaP)
values('Dado D20',3,7.00,'LojaCasaDosRPG');

select * from TB_Produtos

select precoP from TB_Produtos where precoP<500.00;
select precoP from TB_Produtos where precoP>500.00;


select * from TB_Produtos;

delete from TB_Produtos where id = 8;
