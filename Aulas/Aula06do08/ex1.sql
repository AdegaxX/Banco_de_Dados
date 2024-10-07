use classicmodels;
show tables;
select * from products;
select * from products limit 2;

delimiter //
create procedure GetAllProducts()
begin
	select * from products limit 5;
end //
delimiter ;

call GetAllProducts();


create table Produtos (
	Referencia varchar(3) primary key,
    Descricao varchar(50) unique,
    Estoque int not null default 0
);
insert into Produtos values ('001', 'Arroz', 20);
insert into Produtos values ('002', 'Frango', 30);
insert into Produtos values ('003', 'Creatina', 20);

create table ItensVenda (
	Venda int,
    Produto varchar(3),
    Quantidade int
);

delimiter $
create trigger Tgr_ItensVenda_Insert after insert on ItensVenda for each row
begin
	update Produtos set Estoque = Estoque - NEW.Quantidade where Referencia = NEW.Produto;
end$
delimiter ; -- Atualiza a quantidade de produtos modificando o estoque

delimiter $
create trigger Tgr_ItensVenda_Delete after delete on ItensVenda for each row
begin
update Produtos set Estoque = Estoque + OLD.Quantidade where Referencia = OLD.Produto;
end$
delimiter ;

select * from ItensVenda;
insert into ItensVenda values (1, '001', 3);
insert into ItensVenda values (1, '002', 1);
insert into ItensVenda values (1, '003', 5);

delete from ItensVenda where Venda = 1 and Produto = '001';

delimiter //
create procedure SelecaoDosNomes()
begin
	select customerName, city, country from customers order by customerName;
end //
delimiter ;	-- seleciona de ordem crescente os nomes

delimiter //
create procedure SelecaoDosNomes2()
begin
	select customerName, city, country from customers order by customerName desc;
end //
delimiter ;	-- seleciona de ordem descrescente os nomes

drop procedure SelecaoDosNomes;	-- deleta o procedure

call SelecaoDosNomes();
call SelecaoDosNomes2();
