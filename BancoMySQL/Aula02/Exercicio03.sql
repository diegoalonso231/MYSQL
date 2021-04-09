/*
Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá 
ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as informações 
dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 
3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 
5 atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia
(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra B.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .
SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo_produtos varchar(30) not null,
ativo boolean not null,

primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome_produto varchar(30) not null,
preco decimal,
qProduto int not null,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria (tipo_produtos, ativo) values ("Cosmético", true),
("Medicinal",true),
("Estético",true),
("Alimentar",true),
("Restrito",true);

insert into tb_produto (nome_produto, preco, qProduto, categoria_id) values ("Rivotril", 60.0, 6, 5),
("Baton", 15.0, 10, 3),
("Guarana Viton", 09.99, 5, 4),
("Coca", 10.0, 8, 4),
("Red Bull", 12.0, 4, 4),
("Loratadina", 25.0, 10, 2),
("Atadura", 10.9, 3, 1),
("Alprazolam", 120.0, 20, 5);

select * from tb_produto 
where preco > 50;

select * from tb_produto
where preco between 3 and 60;

select * from tb_produto 
where nome_produto like "%B%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.tipo_produtos = "Alimentar";
