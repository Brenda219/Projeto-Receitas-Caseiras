create database Receitas_Caseiras;
use Receitas_Caseiras;

create table receitas
(
id_receitas bigint not null auto_increment ,
nome_receitas varchar(255),
lista_ingredientes varchar (100),
introducao_preparo varchar(100),
id_categorias bigint ,
id_usuarios bigint ,
primary key(id_receitas)
);
create table usuarios
(
id_usuarios bigint not null auto_increment,
email varchar (255),
senha varchar(255),
primary key(id_usuarios)
); 
create table categorias
(
id_categorias bigint not null auto_increment,
nome_categorias varchar (100),
descricao_categorias varchar (100),
primary key(id_categorias)
);
create table imagem
(
id_imagem bigint not null auto_increment,
descricao_imagem varchar (100),
id_receitas bigint,
primary key(id_imagem)
);
alter table receitas
 add foreign key (id_usuarios)references usuarios(id_usuarios),
add foreign key (id_categorias)references categorias(id_categorias);
 alter table imagem
 add  foreign key (id_receitas)references receitas(id_receitas);
 

