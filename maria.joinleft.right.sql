/**
    @author Maria Fiori
*/

create database mercado;
use mercado;

create table fornecedores(
idfor int primary key auto_increment,
nome varchar(255) not null,
estado varchar(2),
telefone varchar(12) not null,
email varchar(255) not null
);

insert into fornecedores (nome,estado,telefone,email)
values ('Adria','SP',1125133798,'adrialtda@email.com');

insert into fornecedores (nome,estado,telefone,email)
values ('Piracanjuba','MG',3126789436,'pracanjuba@email.com');

create table transpotadora(
idtrans int primary key auto_increment,
nome varchar(100) not null,
placa varchar(7) not null,
dataent date not null,
idfor int not null,
foreign key(idfor) references fornecedores(idfor)
);

alter table transportadora add column nomeforn varchar(100) not null; 

rename table transpotadora to transportadora;

insert into transportadora (nome,placa,dataent,idfor)
values ('Braspress','23Q87P0',20220612,1);

insert into transportadora (nome,placa,dataent,idfor)
values ('Roda certa','67Y89U7',20220422,2);

update transportadora set nomeforn='Adria' where idtrans=1;
update transportadora set nomeforn='Piracanjuba' where idtrans=2;

select * from fornecedores left join transportadora on transportadora.nomeforn = fornecedores.nome;


create table produtos(
idprod int primary key auto_increment,
produto varchar(255) not null,
estoque int,
datachegada date,
idfor int not null,
foreign key(idfor) references fornecedores(idfor)
);

insert into produtos (produto,estoque,datachegada,idfor)
values ('Macarrão Adria',45,20220612,1);

insert into produtos (produto,estoque,datachegada,idfor)
values ('Leite Piracanjuba','159',20220422,2);

select * from produtos right join transportadora on transportadora.dataent = produtos.datachegada;
