/*
Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá 
ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as informações dos 
produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos 
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos 
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria
(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela pizza com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 45 reais.
Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e pizza.
Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .
SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categoria(
id_categoria bigint auto_increment,
pizza_tradicional varchar(25)not null,
pizza_especial varchar(25)not null,
pizza_light varchar(25)not null,
primary key (id_categoria)
);
/*
os nomes que estou colocando são os atributos,

*/

create table tb_pizza(
id_pizza bigint auto_increment,
nome_pizza varchar (100) not null,
ingredientes varchar (240) not null,
descricao varchar (240) not null,
tipo_borda varchar (240) not null,
preco_pizza decimal(4,2) not null,
fk_categoria bigint,
primary key(id_pizza),
foreign key (fk_categoria) references tb_categoria (id_categoria)
);

insert into tb_categoria (pizza_tradicional,pizza_especial,pizza_light)
values ('broto','Descupe em falta','broto'),('media','media','media'),('grande','grande','Desculpe em falta');
select * from tb_categoria;


/*
nome_pizza varchar (100) not null,
ingredientes varchar (240) not null,
descricao varchar (240) not null,
tipo_borda varchar (240) not null,
preco_pizza int not null,
fk_categoria bigint not null,
*/

insert into tb_pizza (nome_pizza,ingredientes,descricao,tipo_borda,preco_pizza,fk_categoria)
values ('6 Queijos','Gouda, Meia Cura, Minas padrão, Minas Frescal, Mussarela, Montanhês','O melhor dos nosso produtos se referindo a quejo, nesta pizza, encontrada a descrição de AMOR',
'Borda de palmito com Mussarela','92.30','3');
select * from tb_pizza;

insert into tb_pizza(nome_pizza,ingredientes,descricao,tipo_borda,preco_pizza,fk_categoria)
values ('5 Queijos','Gouda Meia, Cura, Minas padrão, Minas Frescal, Mussarela','O segundo melhor dos nosso produtos se referindo a quejo, nesta pizza, encontrada a descrição de AMOR',
'Borda de palmito com Mussarela',80.00,3);

insert into tb_pizza(nome_pizza,ingredientes,descricao,tipo_borda,preco_pizza,fk_categoria)
values ('4 Queijos','Gouda Meia, Cura, Minas padrão, Minas Frescal','O terceiro melhor dos nosso produtos se referindo a quejo, nesta pizza, encontrada a descrição de AMOR',
'Borda de palmito com Mussarela','70.00',3);

insert into tb_pizza(nome_pizza,ingredientes,descricao,tipo_borda,preco_pizza,fk_categoria)
values ('3 Queijos','Gouda Meia, Cura, Minas padrão','O quarto melhor dos nosso produtos se referindo a quejo, nesta pizza, encontrada a descrição de AMOR',
'Borda de palmito com Mussarela','40.00',3);

insert into tb_pizza(nome_pizza,ingredientes,descricao,tipo_borda,preco_pizza,fk_categoria)
values ('Carne a moda','Carne moida, tomate, requeijão','As vezes uma coisa simples é extremamente impressionante como essa pizza',
'Borda tradicional','35.99',2),
('Frango afogado', 'Frango com requeijão','As vezes uma coisa simples é extremamente impressionante como essa pizza',
"Borda de catupiri",'29.99',1);

select * from tb_pizza
where preco_pizza >45;

select * from tb_pizza
where preco_pizza between 29 and 60;

select * from tb_pizza
where nome_pizza like '%c%';
/*
Faça um um select com Inner join entre  tabela categoria e pizza.
Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .
SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
select *
from tb_categoria
inner join tb_pizza 
on tb_categoria.id_categoria = tb_pizza.fk_categoria;

select *
from tb_categoria
inner join tb_pizza
on tb_categoria.id_categoria = tb_pizza.fk_categoria
where id_categoria =3;
