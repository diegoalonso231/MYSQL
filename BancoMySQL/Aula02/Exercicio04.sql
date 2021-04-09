/*
Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o seguinte 
nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos 
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos 
relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar
a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .
SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert tb_categoria (descricao,ativo) values ("Bovino",true);
insert tb_categoria (descricao,ativo) values ("Suino",true);
insert tb_categoria (descricao,ativo) values ("Aves",true);
insert tb_categoria (descricao,ativo) values ("pertence feijoada",true);
insert tb_categoria (descricao,ativo) values ("imbutidos",true);
insert tb_categoria (descricao,ativo) values ("Outros",true);

insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("ASA",15.00,50,3);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Picanha",40.00,3,1);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Coxa de Frango",15.00,50,3);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Bacon",27.00,10,3);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Hamburguer",33.00,20,3);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Cupim",18.00,50,3);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Peito de Frango",13.00,50,3);

select * from tb_produtos 
where preco > 50;

select * from tb_produtos
where preco between 3 and 60;

select * from tb_produtos 
where nome like "%C%";

select * from tb_categoria inner join tb_produtos on tb_categoria.id = tb_categoria.categoria_id;

select * from tb_categoria inner join tb_produtos on tb_categoria.id = tb_categoria.categoria_id
where tb_categoria.descricao = "Bovino";