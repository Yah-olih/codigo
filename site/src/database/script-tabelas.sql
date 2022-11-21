create database criminalMids;
use criminalMids;
drop database criminalmids;

CREATE TABLE usuario (
  idUsuario INT PRIMARY KEY auto_increment,
  nome VARCHAR(45),
  email VARCHAR(100),
  senha VARCHAR(20),
  fkpesonagem int,
  foreign key (fkpesonagem) references pesonagem(idpesonagem));
  
insert into usuario (nome, email,senha) values
('teste', 'teste@gmail.com',123456789);

select * from usuario;

create table pesonagem (
idpesonagem int primary key auto_increment,
AaronHotcher varchar(45),
DavidRossi  varchar(45),
SpencrReid  varchar(45),
PenelopeGarcia  varchar(45),
DerekMorgan  varchar(45),
EmilyPrentiss  varchar(45),
JenniferJareau  varchar(45),
JasinGideon  varchar(45),
KateCallahan  varchar(45));

create table aviso (
idAviso int primary key auto_increment,
titulo varchar(45),
descricao varchar(250),
fk_usuario int,
foreign key (fk_usuario) references usuario(idUsuario));

insert into aviso (titulo,descricao,fk_usuario) values
('titulo', 'comentario', 1);

select * from aviso;