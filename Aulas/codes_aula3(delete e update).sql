show databases;
use db_book2;
show tables;
select * from employee;
insert into employee values ('Leandro', 'B', 'Adegas', '8887776665', '1998-11-26', '41 Itapajé CE', 'M', '15000', '992335556', 4);
select * from employee where Fname = 'Leandro';
insert into employee values ('Messias', 'D', 'Adegas', '9998887766', '2000-01-03', '41 Itapajé CE', 'M', '30000', '999998888', 1);
select * from employee where Fname = 'Messias';
select * from employee where Dno = 1;
insert into employee (Fname, Lname, Dno, Ssn) values ('Richard', 'Marini', 4, '653298653');
select * from employee where Lname = 'Marini';
insert into employee (Fname, Lname, Ssn, Dno) value ('Robert', 'Hatcher', '980760540', 2);
insert into employee (Fname, Lname, Dno) value ('Adegas', 'Robert', 5);

create table works_on_info (Emp_name varchar(15), Proj_name varchar(15), Hours_per_week decimal(3,1));
insert into works_on_info (Emp_name, Proj_name, Hours_per_week) select E.Lname, P.Pname, W.Hours from project P, works_on W, employee E where P.Pnumber = W.Pno and W.Essn = E.Ssn;

create table d5emps like employee;
use db_book2;
delete from esmployee where Lname = 'Brown';
delete from employee where Ssn = '123456789';
delete from employee where Dno = 5;
delete from employee;

delete from employee where Ssn = '123456789';
select * from employee;

use db_book;
select * from employee;


use db_book2;
select * from d5emps;		-- seleciona todas as colunas da tabela d5
select * from department;	-- seleciona todas as colunas da tabela department
select * from dependent;	-- seleciona todas as colunas da tabela dependent
select * from dependent where Dependent_name = 'Alice';		-- seleciona todas as colunas que possui o nome 'Alice' localizado na coluna 'Dependent_name'

use db_book;
select * from department;
-- Research
-- Administration
-- Headquarters