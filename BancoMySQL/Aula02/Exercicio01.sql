/*
Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte nome db_generation_game_online, onde, o sistema 
trabalhará com as informações dos personagens desse game. 
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
siga  exatamente esse passo a passo:
Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da 
classe para se trabalhar com o serviço desse  game Online.
Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes dos 
funcionários para se trabalhar com o serviço desse game Online (não esqueça de criar a foreign key de tb_classe nesta tabela).
Popule esta tabela classe com até 5 dados.
Popule esta tabela personagem com até 8 dados.
Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
Faça um select  utilizando LIKE buscando os personagens com a letra C.
Faça um um select com Inner join entre  tabela classe e personagem.
Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.

*/
create database db_generation_game_online;
use db_generation_game_online;
create table TB_Classe(
IDclasse bigint auto_increment,
Exp int,
Lvl int not null,
Classe varchar(30) not null,
primary key(IDclasse)
);

create table TB_Personagem(
IDjogador bigint auto_increment,
NomeJogador varchar(30) not null,
PoderDeAtaque int not null,
PoderDeDefesa int not null,
PoderDeMagia int,
FKclasse bigint,
primary key (IDjogador),
foreign key (FKclasse) references TB_Classe (IDclasse)
);
alter table TB_classe; 

insert into TB_classe(Exp, Lvl, Classe)
values (0,1,'GM'),(100,2,'Healer'),(1000,4,'Mage'),(10000,10,'Druid'),(25000,15,'Paladino');
select * from TB_classe;

insert into TB_Personagem(NomeJogador,PoderDeAtaque,PoderDeDefesa,PoderDeMagia)
values('Goku','27000','18000','50000'),('BardoCansado','2','15','2'),('TrollDaInternet','10000','10000','0'),('Luffy','10000','34000','25000'),('RX','1','1','0'),('RaioDePrata','1000','1000',100000),('GameMaster',100000,100000,120000),('DCnet','1','1','1');

insert into TB_Personagem(NomeJogador,PoderDeAtaque,PoderDeDefesa,PoderDeMagia,FKclasse)
Values('ESSAcura',1000,1000,1000,'2');

update TB_personagem
set FKclasse = 1
where IDJogador = 1;

update TB_personagem
set FKclasse = 2
where IDJogador = 5;

update TB_personagem
set FKclasse = 5
where IDJogador in (2,3,8);

update TB_personagem
set FKclasse = 2
where IDJogador = 5;

update TB_personagem
set FKclasse = 4
where IDJogador in (4,6,7);


/*
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;
*/
select PoderDeAtaque from TB_Personagem where PoderDeAtaque>2000;
select PoderDeDefesa from TB_Personagem where PoderDeDefesa between 1000 and 2000;

select * from TB_Personagem where NomeJogador like "%G%";

select *
from TB_Personagem
inner join TB_classe
on TB_Personagem.FKclasse = TB_classe.IDclasse;


select NomeJogador,Classe
from TB_Personagem
inner join TB_classe
on TB_Personagem.FKclasse = TB_classe.IDclasse
where NomeJogador like '%C%';




select * from TB_classe;
select * from TB_Personagem;
