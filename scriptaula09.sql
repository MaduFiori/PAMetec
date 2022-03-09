
create table tb_materias(nome varchar(100)); 

create table tb_professores(
nome varchar(100), 
sobrenome varchar(100), 
telefone integer(100), 
especialização(100), 
materia varchar(100), 
serie integer);

create table tb_alunos(
nome varchar(100), 
rg interger, 
cpf integer, 
responsavel varchar(100), 
serie integer);

create table tb_salas(
numero integer,
serie integer);

create table tb_funcionarios(
nome varchar (100), 
cargo varchar(100);
