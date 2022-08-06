create database day1 
use day1
create table sqlbatch
 (
 Eid int,
 Ename varchar(15),
 Econtact varchar(10),
 Edesignation varchar(15)
 )
 insert sqlbatch values(1,'ajisha','9876543210','developer')
 insert sqlbatch values(2,'jayasri','7598643210','developer')
 select*from sqlbatch
 select distinct eid  from sqlbatch
 select*from sqlbatch
 delete from sqlbatch where Eid=2
 alter table sqlbatch add Esalary varchar(10)
 update sqlbatch set Esalary = 30000 where Edesignation = 'developer'
 select * from sqlbatch
 insert into sqlbatch values(2,'jayasri','7598643210','developer',25000)
 select * from sqlbatch
 insert into sqlbatch values(3,'sowmi','7598643976','tester',25000)
 select * from sqlbatch
 
create database employee
use employee
create table employee
(
Eid int,
Ename varchar(20),
Edesignation varchar(15),
Esalary varchar(5),
Eaddress varchar(30)
)
insert into employee (Eid,Ename,Edesignation,Esalary,Eaddress) values (1,'jayasri','developer','25000','pudukottai'),(2,'ajisha','developer','25000','marthandam'),
(3,'uma','bus analyst','25000','chennai'),(4,'hema','developer','25000','chennai'),(5,'nithya','developer','25000','nagercoil')
select*from employee
update employee set Edesignation = 'AAYA' where Ename='jayasri'
select*from employee
alter table employee add Eage varchar(10)
insert into employee Eage values (25) where Edesignation = 'developer'
select*from employee
update employee set Eage = 56 where Ename='jayasri'
select*from employee
update employee set Eage= 22 where Ename='ajisha'
select*from employee
update employee set Eage = 21 where Eaddress = 'nagercoil'
update employee set Eage = 24 where Esalary = 25000
update employee set Eid = 6 where Eage = 25
insert into employee (Eid,Ename,Edesignation,Esalary,Eaddress) values (6,'augustus','developer','25000','thambaram')
update employee set Eage = 56 where Ename='jayasri'
select * from employee
delete from employee where Eage = 25
sp_rename'employee.Eage','Age',  'column'
update employee set Age = 25 where Ename = 'Augustus'
select * from employee where Ename like '[a-p]%'
select  distinct Edesignation from employee
select * from employee where EName='Ajisha' Collate SQL_Latin1_General_CP1_CS_AS;
truncate table employee
drop database employee
use employee
select * from employee

