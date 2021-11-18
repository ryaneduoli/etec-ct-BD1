CREATE DATABASE futebol;

USE futebol;

CREATE TABLE tb_clube(
id_clube int PRIMARY KEY IDENTITY (1,1),
nome_clube varchar (40),
fundacao_clube varchar (40))

select * from tb_clube


CREATE TABLE tb_partida( 
id_partida int PRIMARY KEY IDENTITY (1,1),
id_visitante INT FOREIGN KEY REFERENCES tb_clube (id_clube),
id_mandante  INT FOREIGN KEY REFERENCES tb_clube (id_clube))

CREATE TABLE tb_jogador(
id_jogador int PRIMARY KEY IDENTITY (1,1),
nome_jogador varchar (40) ,
data_jogador Date, 
posicao varchar (40),
numero_jogador int, 
id_clube  INT FOREIGN KEY REFERENCES tb_clube (id_clube))

drop table tb_gol
CREATE TABLE tb_gol(
id_gol int PRIMARY KEY IDENTITY (1,1), 
minuto varchar (40),
id_jogador INT FOREIGN KEY REFERENCES tb_jogador(id_jogador),
id_partida  INT FOREIGN KEY REFERENCES tb_partida (id_partida))







INSERT INTO tb_clube(nome_clube, fundacao_clube)
VALUES ('Barcelona','12/11/1899'),
	   ('Juventos','12/11/1899'),
	   ('Liverpool','12/11/1899')
	   


INSERT INTO tb_jogador(nome_jogador, id_clube)
VALUES ('Sergio Aguero','2'),
	   ('Mohamed salah','3'),
	   ('Paulo Dybala','2') 
	  


INSERT INTO tb_partida(id_mandante,id_visitante)
VALUES ('3','2'),
       ('1','3'),
	   ('2','1')
	   Select * from tb_partida


INSERT INTO tb_gol(id_jogador,id_partida)
VALUES ('2','1'),
       ('2','1'),
	   ('3','3')
	  

UPDATE tb_jogador SET nome_jogador = 'Alvaro Morata' where id_jogador = 1

INSERT INTO tb_clube (nome_clube,fundacao_clube)
values ('São Paulo','1989/05/11');

INSERT INTO tb_jogador(nome_jogador,data_jogador,posicao,numero_jogador,id_clube)
values ('Messi', '11/11/2001','atacante','10','1');

UPDATE tb_clube SET fundacao_clube = '12/11/1899' where id_clube = 3


UPDATE tb_gol SET  minuto = '45 m' where id_gol = 1

UPDATE tb_gol SET  minuto = '94 m' where id_gol = 1

 Select * from tb_gol
  Select * from tb_jogador
  Select * from tb_clube
  Select * from tb_partida