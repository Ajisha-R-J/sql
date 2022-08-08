create database day3
use day3
create table employees
(
 Eid int primary key,
 EName varchar(20),
 Edesignation varchar(20),
 Esalary int
 )
 insert into employees values(001, 'john', 'Developer', 20000), (002, 'shaj', 'developer',25000),(003, 'julie', 'tester',20000),
 (004, 'jessy', 'HR', 29000),(005,'jakii','admin',20000)
 select * from employees
 select avg(Esalary) as 'avg salary' from employees
 drop table employees
 create table emp
(
 Eid int primary key,
 EName varchar(20),
 Edesignation varchar(20),
 Esalary int
 )
 insert into emp values(1, 'john', 'Developer', 20000), (2, 'shaj', 'developer',25000),(3, 'julie', 'tester',20000),
 (4, 'jessy', 'HR', 29000),(5,'jakii','admin',20000)
 select * from emp
 select avg(Esalary) as 'average salary' from emp
 select min(Esalary) as 'minimum salary' from emp
 select max(Esalary) as 'maximum salary' from emp
 select count(Esalary)as 'count salary' from emp
 select sum(Esalary) as 'sum salary' from emp
 select avg(ESalary) as 'Average Salary',Ename from emp group by Ename
 select avg(Esalary) as 'average Salary', Edesignation from emp group by edesignation having EDesignation='developer'
 select * from emp order by Esalary desc, Eid desc
 select * from emp order by Esalary desc
 select * from emp
 create synonym employee for emp
 select * from employee
 create synonym employ for emp
select * from employ
select * from emp

create table empdet
(
emp_id int,
emp_name varchar(20),
emp_address varchar(20),
emp_dept varchar(20),
dept_id int primary key not null
)

create table dept
(
dept_id int ,
dept_basicpay int
)
select * from empdet
select * from dept


insert into empdet values (1, 'ajisha', 'marthandam','developer',01 ),(2, 'jayasri', 'pattukottai', 'developer', 02), 
(3,'sowmiya', 'thanjavur', 'tester', 03),(4,'uma', 'chennai','sales', 04),(5, 'hema', 'chennai', 'analyst',05),(6,'gayathri', 'erode','hr',06),
(7, 'ramya', 'marthandam','developer',07),(8, 'jaya', 'marthandam', 'admin',08)
insert into dept values(01, 45000),(02,20000),(03,40000),(04, 30000),(05,35000)
select emp_id,emp_name,emp_dept,dept_basicpay from empdet join dept on empdet.dept_id=dept.dept_id
select emp_id,emp_name,emp_dept,dept_basicpay from empdet left join dept on empdet.dept_id=dept.dept_id
select emp_id,emp_name,emp_dept,dept_basicpay from empdet right join dept on empdet.dept_id=dept.dept_id
create table sample
(
id int primary key IDENTITY(1,1),
name varchar(20)
)
insert into sample values('Sam'),('jay'),('sek')
select * from sample
create sequence empid as INT start with 1 increment by 3
create table sample1
(
id int primary key ,
name varchar(20)
)
insert into sample1 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample1
insert into sample1 values(NEXT VALUE FOR EMPID,'Paul')
insert into sample1 values(NEXT VALUE FOR EMPID,'John')

alter sequence empid restart with 1 increment by 1
create table sample2
(
id int primary key ,
name varchar(20)
)
insert into sample2 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample2
insert into sample2 values(NEXT VALUE FOR EMPID,'Paul')
insert into sample2 values(NEXT VALUE FOR EMPID,'John')










