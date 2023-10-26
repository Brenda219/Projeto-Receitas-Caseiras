create database Receitas_Caseiras;
use Receitas_Caseiras;

create table receitas
(
id_receitas bigint not null auto_increment ,
nome_receitas varchar(100),
lista_ingredientes varchar (100),
introducao_preparo varchar(100),
primary key(id_receitas)
);
create table usuarios
(
id_usuarios bigint not null auto_increment,
endereço_email varchar (20),
senha varchar(10),
primary key(id_usuarios)
); 
create table categoria
(
id_categoria bigint not null auto_increment,
nome_categoria varchar (100),
descricao_categoria varchar (100),
imagem_representativa varchar (100),
primary key(id_categoria)
);
create table imagem
(
id_imagem bigint not null auto_increment,
descricao_imagem varchar (100),
primary key(id_imagem)
);

 


