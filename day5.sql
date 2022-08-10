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
 select * from employees where Eid=3
 select * from employees
create index ix_Ename on employees(Ename)
select * from employees
create trigger trg_insert
on employees
FOR INSERT
as
begin
    print 'You cannot insert data'
    rollback transaction --undo
end
drop trigger trg_insert

create trigger trg_dml
on employee
FOR INSERT,UPDATE,DELETE
as
begin
    print 'You cannot perform DML Operations'
    rollback transaction 
end
insert into employee values(6,'Tom','2001-01-07 12:12:12.567',22,'self-employeed')
update employee set eid=4 where eid=5
select * from employee
drop trigger trg_dml
disable trigger trg_dml on employee
enable trigger trg_dml on employee
select * from employee

alter trigger trg_dml
on employee
FOR INSERT,UPDATE,DELETE
as
begin
    if DATEPART(DW,GETDATE())=4 
    begin
        print 'You cannot perform DML Operations on batch2'
        rollback transaction 
    end
end 
 select * from employee
disable trigger trg_dml on Voting
enable trigger trg_dml on Voting
INSERT INTO employee VALUES(7,'Jerry','2001-01-07 12:12:12.567',24,'self-employeed')

delete from employee where id=7

create trigger trg_inserted
on employee
for insert
as 
begin 
     -- trigger table
end

select * from employee

INSERT INTO employee VALUES(006,'Jamie',25000)

create trigger trg_deleted
on employee
for delete
as 
begin 
    select * from deleted -- trigger table
end

delete from employee where eid=1

create trigger trg_update
on employee
for update
as 
begin 
    select * from inserted
    select * from deleted -- trigger table
end

update employee set ename='Lea' where Eid=4


create trigger trg_ddl
on database
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
    begin
        print 'You cannot perform DDL Operations on sqlbatch db'
        rollback transaction 
    end

disable trigger trg_ddl on database

use day3
create table demo4
(
id int
)



--SERVER SCOPED
create trigger trg_ddlserver
on ALL SERVER
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
    begin
        print 'You cannot perform DDL Operations on SERVER'
        rollback transaction --undo the DML Statements
    end


select * from sample1

BEGIN TRANSACTION
    insert into sample1 values(9,'Ajisha') 
    SAVE TRANSACTION insert_stmt
    delete from sample1 where id = 7  
ROLLBACK TRANSACTION insert_stmt
COMMIT TRANSACTION

--IMPLICIT TRANSACTION
SET IMPLICIT_TRANSACTIONS OFF
