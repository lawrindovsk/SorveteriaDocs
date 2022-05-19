create database Sorveteria;
use Sorveteria;
-------------------------------------
create table Cliente(
CPF bigint (11) primary key not null,
nome varchar(150) not null,
valor decimal(10,2) not null
)Engine = InnoDB;
-------------------------------------

create table Funcionario(
CPF bigint(11) primary key not null, 
nome varchar(150) not null, 
dataDeNascimento varchar(15) not null, 
telefone varchar(15) not null, 
endereco varchar(45) not null, 
funcao varchar(45) not null,
salario decimal(10,2),
login varchar(45) not null,
senha varchar(45) not null
)Engine = InnoDB;

create table Gerente(
CPF bigint(11) primary key not null, 
nome varchar(150) not null, 
dataDeNascimento varchar(15) not null, 
telefone varchar(15) not null, 
endereco varchar(45) not null, 
funcao varchar(45) not null,
salario decimal(10,2),
login varchar(45) not null,
senha varchar(45) not null
)Engine = InnoDB;

create table Estoque(
id int primary key auto_increment not null,
nomeProduto varchar(55) not null, 
tipoProduto varchar(35) not null,
valorProduto decimal(10,2) not null,
qtdEstoque int not null
)Engine = InnoDB;

update funcionario set login = 'adm123' where CPF = 40815035454;
update funcionario set senha = '1234' where CPF = 40815035454;

 
describe funcionario;  

insert into Gerente(CPF, nome, DataDeNascimento, telefone, endereco, funcao, salario, login, senha) values ('42551678465', 'Gustavo Laurindo dos Santos', '24/01/2005', '11977675466','Avenida Senador Vergueiro, 400 - Lab 06', 'Gerente', '2.255');
 
insert into  Estoque(id, nomeProduto, tipoProduto, valorProduto, qtdEstoque) values('', 'Picolé', 'Chocolate', '1.20','5');
insert into  Estoque(id, nomeProduto, tipoProduto, valorProduto, qtdEstoque) values('', 'Picolé', 'Chiclete', '1.20','5');
insert into  Estoque(id, nomeProduto, tipoProduto, valorProduto, qtdEstoque) values('', 'Picolé', 'Limão', '1.20','5');
insert into  Estoque(id, nomeProduto, tipoProduto, valorProduto, qtdEstoque) values('', 'Palete Mexicana', 'Leite Ninho com Nutella', '6.00','5');
insert into  Estoque(id, nomeProduto, tipoProduto, valorProduto, qtdEstoque) values('', 'Palete Mexicana', 'Morango com Leite Condensado', '6.00','5');
insert into  Estoque(id, nomeProduto, tipoProduto, valorProduto, qtdEstoque) values('', 'Palete Mexicana', 'Oreo', '6.00','5');
insert into  Estoque(id, nomeProduto, tipoProduto, valorProduto, qtdEstoque) values('', 'Sorvete Massa', 'Açai', '9.00','5');
insert into  Estoque(id, nomeProduto, tipoProduto, valorProduto, qtdEstoque) values('', 'Sorvete Massa', 'Sonho de Valsa', '9.00','5');
insert into  Estoque(id, nomeProduto, tipoProduto, valorProduto, qtdEstoque) values('', 'Sorvete Massa', 'Maracujá ', '9.00','5');


alter table Funcionario add login varchar(45) not null;
alter table Funcionario add senha varchar(45) not null;
--
alter table Gerente add login varchar(45) not null;
alter table Gerente add senha varchar(45) not null;



update funcionario set login = '123adm' where CPF = 46615763134;
update funcionario set senha = '1234' where CPF = 46615763134;

select * from Gerente;
update Gerente set login = 'gerente123' where CPF = 42551678465;
update Gerente set senha = '123456' where CPF = 42551678465; 

select * from Funcionario;
drop table Estoque;