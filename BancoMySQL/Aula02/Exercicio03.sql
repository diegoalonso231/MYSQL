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
/*3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
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
create tb_categorias(
id_categorias bigint auto_increment,
feminino varchar(50) not null,
masculino varchar(50) not null,
higiene varchar(50) not null,

primary key id_categorias);

create tb_produto(
id_produto bigint auto_increment,

primary key id_produto);