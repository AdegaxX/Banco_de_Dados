use db_book2;

-- no console:
-- source C:\Employee_Database_Script.sql;	para copiar um banco de dados

show tables;
select * from department;	-- seleciona todos os elementos da tabela department

select Bdate, Address from employee where Fname = 'John' and Minit = 'B' and Lname = 'Smith';

select Bdate, Address from employee where Lname = 'Smith';

select E.Fname, E.Lname, S.Fname, S.Lname from employee as E, employee as S where E.Super_ssn = S.Ssn;

select * from employee where Dno = 5;

select all Salary from employee;	-- Mostra todos os salários
select distinct Salary from employee;	-- Mostra os salários diferentes, não mostra os salários iguais