use db_book;

select FNAME, LNAME from EMPLOYEE
where SUPER_SSN is NULL;

select FNAME, LNAME from EMPLOYEE
where SUPER_SSN is not NULL;

select distinct Pnumber from PROJECT
where Pnumber in
( select Pnumber from PROJECT, DEPARTMENT, EMPLOYEE
where Dnum = Dnumber and
Mgr_ssn = Ssn and Lname = 'Smith')
or
Pnumber in
( select Pno from WORKS_ON, EMPLOYEE
where Essn = Ssn and Lname = 'Smith');

select Lname, Fname
from EMPLOYEE
where Salary > ALL
( select Salary from EMPLOYEE where DNO = 5);

select E.Fname, E.Lname from EMPLOYEE as E
where E.Ssn in
( select D.Essn from DEPENDENT as D
where E.Fname = D.Dependent_name
and E.Sex = D.sex);

select Fname, Lname
from EMPLOYEE
where not exists ( select * from DEPENDENT
where Ssn = Essn );

select Fname, Lname from EMPLOYEE
where exists (select * from DEPENDENT where Ssn = Essn)
and 
exists (select * from DEPARTMENT where Ssn = Mgr_ssn);

select SUM(Salary) as Total_Sal, MAX(Salary) as Highest_Sal, MIN(Salary) Lowest_Sal, AVG(Salary) as Average_Sal from EMPLOYEE;

select SUM(Salary) as Total_Sal, MAX(Salary) as Highest_Sal, MIN(Salary) Lowest_Sal, AVG(Salary) as Average_Sal from EMPLOYEE where Dno = 5;

# select SUM(Salary) as Total_Sal, MAX(Salary) as Highest_Sal, MIN(Salary) Lowest_Sal, AVG(Salary) as Average_Sal 
# from (EMPLOYEE join DEPARTMENT on Dno = Dnumber) where Dno = 5);

select count(*)
from employee;

select count(*)
from EMPLOYEE, DEPARTMENT
where Dno = Dnumber and Dname = "Research";

select Fname, Lname from EMPLOYEE
where (select count(*) from DEPENDENT
where Ssn = Essn) >=2;

select Dno, count(*), AVG(Salary)
from EMPLOYEE
group by Dno;

select Pnumber, Pname, count(*) as Quantidade from project, works_on where Pnumber=Pno group by Pnumber, Pname;
select * from department;
select Pnumber, Pname, count(*) as Quantidade from project, works_on where Pnumber=Pno group by Pnumber, Pname having Dnum;

select Pnumber, Pname, count(*) as Funcionários from project, works_on, employee where Pnumber=Pno and Ssn=Essn and Dno=5 group by Pnumber, Pname;

select Dno, count(*) as Funcionários from employee where Salary>'4000' group by Dno having count(*)>3;

