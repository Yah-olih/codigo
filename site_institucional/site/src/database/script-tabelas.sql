create database criminalMids;
use criminalMids;
-- drop database criminalmids;

create table votos (
idvotos int primary key auto_increment,
nome varchar(45));

insert into votos (nome) values
('voto1');

select * from votos;

CREATE TABLE usuario (
  idUsuario INT PRIMARY KEY auto_increment,
  nome VARCHAR(45),
  email VARCHAR(100),
  senha VARCHAR(20),
  fkvotos int,
  foreign key (fkvotos) references votos(idvotos));
  
insert into usuario (nome, email,senha) values
('teste', 'teste@gmail.com',123456789);

select * from usuario;

create table aviso (
id int primary key auto_increment,
titulo varchar(45),
descricao varchar(250),
fk_usuario int,
foreign key (fk_usuario) references usuario(idUsuario));

insert into aviso (titulo, descricao, fk_usuario) values
('titulo', 'comentario', 1);

select * from aviso;