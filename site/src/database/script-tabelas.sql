create database criminalMids;
use criminalMids;
drop database criminalmids;

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

CREATE TABLE usuario (
  idusuario INT PRIMARY KEY auto_increment,
  nome VARCHAR(45),
  email VARCHAR(100),
  senha VARCHAR(20),
  fkpesonagem int,
  foreign key (fkpesonagem) references pesonagem(idpesonagem));
  
insert into usuario (nome, email,senha) values
('teste', 'teste@gmail.com',123456789);

select * from usuario;
