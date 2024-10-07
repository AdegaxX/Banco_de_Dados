use itaxi;

-- inserindo dados em CLIENTE:
-- update cliente set nome = 'Adriana Tânia Elisa Peixoto' where id = 1;	tive que alterar porque já possuia um elemento.
insert into cliente values(1,'Adriana Tânia Elisa Peixoto');
insert into cliente values(2,'Gustavo Breno Gonçalves');
insert into cliente values(3,'Emanuel José Diego Pinto');
insert into cliente values(4,'Sara Vera Alícia Aragão');
insert into cliente values(5,'Tereza Eduarda Caldeira');
insert into cliente values(6,'Mariana Isabel Assis');
insert into cliente values(7,'Cláudio Daniel Enzo Moreira');
select * from cliente;

-- inserindo dados em CLIENTE_PARTICULAR:
insert into cliente_particular values(1,'437.434.823-98');
insert into cliente_particular values(2,'631.264.280-10');
insert into cliente_particular values(3,'137.563.858-09');
insert into cliente_particular values(4,'334.592.261-45');
select * from cliente_particular;

-- inserindo dados em CLIENTE_EMPRESA:
insert into cliente_empresa values(5,'89.996.021/0001-12');
insert into cliente_empresa values(6,'74.647.876/0001-60');
insert into cliente_empresa values(7,'79.441.965/0001-70');
select * from cliente_empresa;

-- inserindo dados em TAXI:
insert into taxi values('HTF4572', 'Chevrolet', 'Onix', '2023');
insert into taxi values('LVJ1489', 'volkswagen', 'Gol', '2004');
insert into taxi values('NEM8045', 'Mercedes', 'G-63-AMG', '2023');
select * from taxi;

-- inserindo dados em CORRIDA:
insert into corrida values(1, 'LVJ1489', '2024-03-02');
insert into corrida values(2, 'HTF4572', '2024-05-20');
insert into corrida values(3, 'HTF4572', '2024-06-04');

insert into corrida values(4, 'kkk8888', '2002-12-05');
delete corrida set id = 4;

insert into corrida values(6, 'NEM8045', '2024-07-25');
select * from corrida;
desc corrida;