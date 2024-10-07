create database itaxi;
use itaxi;

create table cliente(
id varchar(4),
nome varchar(80),
primary key(id)
);

create table cliente_particular(
id varchar(4),
cpf varchar(14),
primary key(id),
foreign key(id) references cliente(id)
);

create table cliente_empresa(
id varchar(4),
cnpj varchar(18),
primary key(id),
foreign key(id) references cliente(id)
);

create table taxi(
placa varchar(7),
marca varchar(30),
modelo varchar(30),
anofab integer,
primary key(placa)
);

create table corrida(
cliid varchar(4),
placa varchar(7),
dataPedido date,
primary key(cliid, placa, dataPedido),
foreign key(cliid) references cliente(id),
foreign key(placa) references taxi(placa)
);

describe cliente_particular;

-- create table fake(nome varchar(20), id varchar(4)cliente_particularcliente_empresa);


drop table fake;
drop database itaxi2;
alter table cliente_particular add nome varchar(30);
alter table cliente_particular modify column nome date;
alter table cliente_particular drop column nome;

insert into cliente(id, nome) values (1, "Rian Jacinto");

select * from cliente;