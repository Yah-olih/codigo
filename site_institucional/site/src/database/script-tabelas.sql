create database criminalMids;
use criminalMids;
-- drop database criminalmids;

CREATE TABLE usuario (
  idUsuario INT PRIMARY KEY auto_increment,
  nome VARCHAR(45),
  email VARCHAR(100),
  senha VARCHAR(20));
  
insert into usuario (nome, email,senha) values
('teste', 'teste@gmail.com',123456789);

select * from usuario;

create table votos (
idvotos int primary key auto_increment,
nome varchar(45),
numero varchar(45),
fk_usuario int,
foreign key (fk_usuario) references usuario(idUsuario));

insert into votos (nome, numero ,fk_usuario) values
('voto1','1',1);

select * from votos;

create table aviso (
idAviso int primary key auto_increment,
titulo varchar(45),
descricao varchar(250),
fk_usuario int,
foreign key (fk_usuario) references usuario(idUsuario));

insert into aviso (titulo, descricao, fk_usuario) values
('titulo', 'comentario', 1);

select * from aviso;

select sum(numero) as soma from votos group by nome;
