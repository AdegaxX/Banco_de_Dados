/*	Todas as questões:
> 	Fazer o DDL de um MER especifico;
>	Popular o BD criado com informação fictícias;
> 	Importar um BD desde um arquivo dump;
> 	Listar o nome dos itens de pelo menos uma tabela;
> 	Quantos empregados tem o departamento de pesquisa ("research")?
> 	Incluir um novo departamento denominado "datascience" com Dno =7;
> 	Incluir pelo menos dois cientistas de dados no novo departamento com os atributos básicos;
> 	Aumentar o salário de todos os empregados em 13.5% do valor atual;
> 	Mudar a endereço de residência ("Address") do departamento 4 ("Administration") para Itapajé, CE;
*/

-- criação do banco de dados 'db_book':
create database db_book;
create table employee (
	Fname VARCHAR(10) NOT NULL,
	Minit CHAR,
	Lname VARCHAR(20) NOT NULL,
	Ssn CHAR(9) NOT NULL,
	Bdate DATE,
	Address VARCHAR(30),
	Sex CHAR(1),
	Salary DECIMAL(5),
	Super_ssn CHAR(9),
	Dno INT NOT NULL,
	PRIMARY KEY(Ssn));
create table department (
	Dname VARCHAR(15) NOT NULL,
	Dnumber INT NOT NULL,
	Mgr_ssn CHAR(9) NOT NULL,
	Mgr_start_date DATE,
	PRIMARY KEY(Dnumber),
	UNIQUE(Dname),
	FOREIGN KEY(Mgr_ssn) REFERENCES employee(Ssn) );
create table dept_locations (
	Dnumber INT NOT NULL,
	Dlocation VARCHAR(15) NOT NULL,
	PRIMARY KEY(Dnumber, Dlocation),
	FOREIGN KEY(Dnumber) REFERENCES department(Dnumber) );
create table project (
	Pname VARCHAR(15) NOT NULL,
	Pnumber INT NOT NULL,
	Plocation VARCHAR(15),
	Dnum INT NOT NULL,
	PRIMARY KEY(Pnumber),
	UNIQUE(Pname),
	FOREIGN KEY(Dnum) REFERENCES department(Dnumber) );
create table works_on (
	Essn CHAR(9) NOT NULL,
	Pno INT NOT NULL,
	Hours DECIMAL(3,1) NOT NULL,
	PRIMARY KEY(Essn, Pno),
	FOREIGN KEY(Essn) REFERENCES employee(Ssn),
	FOREIGN KEY(Pno) REFERENCES project(Pnumber) );
create table dependent (
	Essn CHAR(9) NOT NULL,
	Dependent_name  VARCHAR(15) NOT NULL,
	Sex CHAR,
	Bdate DATE,
	Relationship VARCHAR(8),
	PRIMARY KEY(Essn, Dependent_name),
	FOREIGN KEY(Essn) REFERENCES EMPLOYEE(Ssn) );
/*	Algumas alterações feitas em sala no 'db_book':
alter table department ADD CONSTRAINT Dep_emp FOREIGN KEY(Mgr_ssn) REFERENCES employee(Ssn);
alter table employee ADD CONSTRAINT Emp_emp FOREIGN KEY(Super_ssn) REFERENCES employee(Ssn);
alter table employee ADD CONSTRAINT Emp_dno FOREIGN KEY(Dno) REFERENCES department(Dnumber);
alter table employee ADD CONSTRAINT Emp_super FOREIGN KEY(Super_ssn) REFERENCES employee(Ssn);
*/

use db_book;
-- inserindo dados nas tabelas:
insert into employee values ('John','B','Smith',123456789,'1965-01-09','731 Fondren, Houston TX','M',30000,333445555,5),('Franklin','T','Wong',333445555,'1965-12-08','638 Voss, Houston TX','M',40000,888665555,5),('Alicia','J','Zelaya',999887777,'1968-01-19','3321 Castle, Spring TX','F',25000,987654321,4),('Jennifer','S','Wallace',987654321,'1941-06-20','291 Berry, Bellaire TX','F',43000,888665555,4),('Ramesh','K','Narayan',666884444,'1962-09-15','975 Fire Oak, Humble TX','M',38000,333445555,5),('Joyce','A','English',453453453,'1972-07-31','5631 Rice, Houston TX','F',25000,333445555,5),('Ahmad','V','Jabbar',987987987,'1969-03-29','980 Dallas, Houston TX','M',25000,987654321,4),('James','E','Borg',888665555,'1937-11-10','450 Stone, Houston TX','M',55000,null,1);
insert into department values ('Research',5,333445555,'1988-05-22'),('Administration',4,987654321,'1995-01-01'),('Headquarters',1,888665555,'1981-06-19');
insert into project values ('ProductX',1,'Bellaire',5),('ProductY',2,'Sugarland',5),('ProductZ',3,'Houston',5),('Computerization',10,'Stafford',4),('Reorganization',20,'Houston',1),('Newbenefits',30,'Stafford',4);
insert into works_on values (123456789,1,32.5),(123456789,2,7.5),(666884444,3,40.0),(453453453,1,20.0),(453453453,2,20.0),(333445555,2,10.0),(333445555,3,10.0),(333445555,10,10.0),(333445555,20,10.0),(999887777,30,30.0),(999887777,10,10.0),(987987987,10,35.0),(987987987,30,5.0),(987654321,30,20.0),(987654321,20,15.0),(888665555,20,16.0);
insert into dependent values (333445555,'Alice','F','1986-04-04','Daughter'),(333445555,'Theodore','M','1983-10-25','Son'),(333445555,'Joy','F','1958-05-03','Spouse'),(987654321,'Abner','M','1942-02-28','Spouse'),(123456789,'Michael','M','1988-01-04','Son'),(123456789,'Alice','F','1988-12-30','Daughter'),(123456789,'Elizabeth','F','1967-05-05','Spouse');
insert into dept_locations values (1,'Houston'),(4,'Stafford'),(5,'Bellaire'),(5,'Sugarland'),(5,'Houston');


desc department;
select * from department;
-- Research - Dno = 5
-- Administration - Dno = 4
-- Headquarters - Dno = 1

select * from employee where Dno = 5;
-- possui 4 empregados

select * from department;
insert into department (Dname, Dnumber) values ('Datascience', 7);
-- Adicionou um novo departamento em 'department' chamado 'Datascience' no departamento 7

select * from employee;
insert into employee values ('Leandro', 'A', 'Adegas', '333445556', '1998-11-26', '41 Itapajé BR', 'M', '30000', '333445556', 7);
insert into employee values ('Messias', 'A', 'Nascimento', '333445557', '2000-01-03', '150 Fortaleza BR', 'M', '45000', '333445556', 7);
-- Adicionou dois novos funcionários: Leandro Adegas e Messias Nascimento, todos dois no departamento de Datascience

update employee set Salary = round(Salary * 1.135, 7);
select * from employee;
-- Aumenta o salário de todos os funcionários em 23,5% e utiliza o round para arredondar essa conta

select * from dept_locations;
update dept_locations set Dlocation = 'Itapajé CE' where Dnumber = 4;
-- Altera o Dlocation do departamento 4 para Itapajé