insert into pessoas (nome, nascimento, sexo, endereco, id) values ('Raquel Sônia Daniela Nascimento', '2001-07-12', 'F', '68371-210', default);
delete from pessoas where id=2;	#remove a linha do id 2
ALTER TABLE pessoas ADD COLUMN contato VARCHAR(12);	#adiciona uma nova coluna
UPDATE pessoas SET contato = '(93) 98579-5603' WHERE id = 1;
select * from pessoas;
ALTER TABLE pessoas DROP COLUMN id;
ALTER TABLE pessoas ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY;

#----------------------------------------------------------------------------------------
# Aula Banco de dados:
create database empresa;
use empresa;
create table employee (
Fname varchar(15) not null,
Minit char,
Lname varchar(15) not null,
Ssn char(9) not null,
Bdate date,
Address varchar(30),
Sex decimal(10,2),
Super_ssn char(9),
Dno int not null,
primary key(Ssn)
);

select * from employee;

create table departament (
Dname varchar(15) not null,
Dnumber int not null,
Mgr_ssn char(9) not null,
Mgr_ssn_date date,
primary key(Dnumber),
unique(Dname),
foreign key(Mgr_ssn) references employee(Ssn)
);

create table dept_locations (
Dnumber int not null,
Dlocation varchar(15) not null,
primary key(Dnumber, Dlocation),
foreign key(Dnumber) references departament(Dnumber)
);

select * from works_on;

show tables;

create table project (
Pname varchar(15) not null,
Pnumber int not null,
Plocation varchar(15),
Dnum int not null,
primary key(Pnumber),
unique(Pname),
foreign key(Dnum) references departament(Dnumber)
);

create table works_on (
Essn char(9) not null,
Pno int not null,
Hours decimal(3,1) not null,
primary key(Essn, Pno),
foreign key(Essn) references employee(Ssn),
foreign key(Pno) references project(Pnumber)
);

create table dependent (
Essn char(9) not null,
Dependent_name varchar(15) not null,
Sex char,
Bdate date,
Relationship varchar(8),
primary key(Essn, Dependent_name),
foreign key(Essn) references employee(Ssn)
);

desc dependent;