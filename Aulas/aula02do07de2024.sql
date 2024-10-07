use db_book;
select Fname, Lname, Address from (employee join department on Dno=Dnumber) where Dname='Administration';
select Fname, Lname, Address from (employee inner join department on Dno=Dnumber) where Dname='Administration';
select E.Lname as Employee_name, S.Lname as Supervisor_name from (employee as E left outer join employee as S on E.Super_ssn=S.Ssn);
-- mostra os funcionários e seus supervisores
select E.Lname as Employee_name, S.Lname as Supervisor_name from (employee as E right outer join employee as S on E.Super_ssn=S.Ssn);
-- mostra todos os supervisores mesmo não tendo funcionário supervisionado

create trigger warning before insert on department for each row signal sqlstate '45000' set message_text='ação não permitida';
insert into department values('cd3', '10', 3344556677, '2024-09-13');	-- impede que seja inserido dados no department
show triggers;	-- mostra os triggers que foram criados
drop trigger warning;

create view tabela1 as select Fname, Lname, Pname, Hours from employee, project, works_on where Ssn=Essn and Pno=Pnumber;
select * from tabela1; -- works_on1
create view dept_info(Dept_name, No_of_emps, Total_sal) as select Dname, count(*), sum(Salary) from department, employee where Dnumber=Dno group by Dname;
select * from dept_info;

select Fname, Lname from tabela1 where Pname='ProductX';

show full tables where table_type='VIEW';

-- incluir, atualizar e apagar a tabela de uma view:
insert into tabela1 values ('Leandro', 'Adegas', 'Reorganization', 50);

use db_book;
show tables;
select * from employee;
insert into employee values ('Leandro', 'Nasc', 'Adegas', 44455588, '1998', 'Rua dois', 'M', 45000, 777555444, 7);
insert into employee values ('Ana', 'Jacinto', 'Leite', 44488899, '2001', 'Rua dois', 'F', 25000, 777666444, 7);


create trigger teste_sai before insert on employee for each row SELECT * FROM (SELECT * , ROW_NUMBER() OVER () AS row_num FROM employee) subquery ORDER BY row_num DESC LIMIT 1;


select * from department;
select * from dependent;
select * from dept_locations;
select * from employee;
select * from project;
select * from works_on;