create database day2task
use day2task
create table employees
(
EID INT PRIMARY KEY,
ENAME VARCHAR(20) NOT NULL,
EDESIGNATION VARCHAR(20) NOT NULL
)

insert into employees values(1,'jayasri','Admin')

insert into employees(EID,ENAME,EDESIGNATION) values(2, 'sowmiya','HR' ),(3,'ajisha','Developer')

select * from employees

insert into employees values(4,'uma', 'Tester')

create table Voting
(
ID int Primary key,
Name varchar(25) UNIQUE NOT NULL,
dob datetime NOT NULL CHECK(dob <= CURRENT_TIMESTAMP),
age int NOT NULL CHECK(age >= 18),
designation varchar(25) DEFAULT 'self-employeed'
)

insert into Voting values(1,'Jayasri','2000-01-07 12:12:12',22,'IT Employee')
insert into Voting values(2,'sowmiya','2000-01-07 12:12:12',22,'IT Employee')
insert into Voting values(3,'ajisha','2001-01-07 12:12:12.567',22,'IT Employee')
insert into Voting(id,name,dob,age) values(4,'uma','2001-01-07 12:12:12.567',22)

select * from Voting

create table dept
(
did int PRIMARY KEY,
dname varchar(20) NOT NULL
)

insert into dept values(1,'Admin')
insert into dept values(2,'Developer')
insert into dept values(3,'Designer')
insert into dept values(4,'Tester')

select * from dept
delete from dept where did=1
update dept set did=100 where did=1

create table parent
(
pid int primary key,
pname varchar(20) not null
)
insert into parent values(1,'p1')
insert into parent values(2,'p2')
insert into parent values(3,'p3')

create table child
(
cid int primary key,
cname varchar(20) not null,
pno int foreign key references parent(pid) on delete cascade on update cascade
)
insert into child values(100,'c1',1)
insert into child values(101,'c2',2)
insert into child values(102,'c3',1)
insert into child values(103,'c4',3)
select * from child
update parent set pid=10 where pid=1
select * from parent
select * from child
delete from parent where pid=10



