create database criminalMids;
use criminalMids;
-- drop database criminalMids;

CREATE TABLE usuario (
  idUsuario INT PRIMARY KEY auto_increment,
  nome VARCHAR(45),
  email VARCHAR(100),
  senha VARCHAR(20));
  
  
insert into usuario (nome, email,senha) values
('pessoa1', 'pessoa1@gmail.com',123456789),
('pessoa2', 'pessoa2@gmail.com',123456789),
('pessoa3', 'pessoa3@gmail.com',123456789),
('pessoa4', 'pessoa4@gmail.com',123456789),
('pessoa5', 'pessoa5@gmail.com',123456789),
('pessoa6', 'pessoa6@gmail.com',123456789),
('pessoa7', 'pessoa7@gmail.com',123456789),
('pessoa8', 'pessoa8@gmail.com',123456789),
('pessoa9', 'pessoa9@gmail.com',123456789),
('pessoa10', 'pessoa10@gmail.com',123456789),
('pessoa11', 'pessoa11@gmail.com',123456789),
('pessoa12', 'pessoa12@gmail.com',123456789),
('pessoa13', 'pessoa13@gmail.com',123456789),
('pessoa14', 'pessoa14@gmail.com',123456789),
('pessoa15', 'pessoa15@gmail.com',123456789),
('pessoa16', 'pessoa16@gmail.com',123456789),
('pessoa17', 'pessoa17@gmail.com',123456789),
('pessoa18', 'pessoa18@gmail.com',123456789),
('pessoa19', 'pessoa19@gmail.com',123456789),
('pessoa20', 'pessoa19@gmail.com',123456789),
('pessoa21', 'pessoa19@gmail.com',123456789),
('pessoa22', 'pessoa19@gmail.com',123456789),
('pessoa23', 'pessoa19@gmail.com',123456789),
('pessoa24', 'pessoa19@gmail.com',123456789),
('pessoa25', 'pessoa19@gmail.com',123456789),
('pessoa26', 'pessoa19@gmail.com',123456789),
('pessoa27', 'pessoa19@gmail.com',123456789),
('pessoa28', 'pessoa19@gmail.com',123456789),
('pessoa29', 'pessoa19@gmail.com',123456789),
('pessoa30', 'pessoa19@gmail.com',123456789);


select * from usuario;

create table votos (
idvotos int primary key auto_increment,
nome varchar(45),
numero varchar(45),
fk_usuario int not null unique,
foreign key (fk_usuario) references usuario(idUsuario));

insert into votos (nome, numero ,fk_usuario) values
('Aaron Hotchner','1',1),
('Aaron Hotchner','1',2),
('Aaron Hotchner','1',3),
('Aaron Hotchner','1',5),
('David-Rossi','1',9),
('David-Rossi','1',10),
('David-Rossi','1',11),
('Space','1',26),
('Space','1',27),
('Space','1',28),
('Space','1',29),
('Penelope Garcia','1',22),
('Penelope Garcia','1',23),
('Penelope Garcia','1',24),
('Darick-Morgan','1',6),
('Darick-Morgan','1',7),
('Darick-Morgan','1',8),
('Emilly','1',12),
('JJ','1',16),
('JJ','1',17),
('Jason','1',13),
('Jason','1',14),
('Jason','1',15),
('JJ','1',18),
('Kate','1',20),
('Emilly','1',4),
('Jason', '1',25),
('Kate','1',19),
('Kate','1',21);

select * from votos;

create table aviso (
idAviso int primary key auto_increment,
titulo varchar(45),
descricao varchar(250),
fk_usuario int,
foreign key (fk_usuario) references usuario(idUsuario));

insert into aviso (titulo, descricao, fk_usuario) values
('Darick-Morgan' ,'muito lindo esse homem',8),
('Space' ,'o cara mais inteligente da serie',9),
('Penelope Garcia' ,'ela e tão fofinha com seus seus briquedinhos',10),
('David-Rossi' ,'o divorciado KKKKKK',11);

select * from aviso;

select sum(numero) as soma, nome as nome from votos group by nome;

