---1---
---difference between local and global table
---once the table elements are declared inside the table creation it is referred as local table and the outside the table creation is as global table .

---2---
---Check constraint
--- check constraint is the condition which is is used to check , for example to  know the age for voting by using condition we have to give check as a keyword. i.e) check (age>18)

---3---
---trigger
---trigger is used to perform an action if we use trigger in queries after disabling the trigger only we can perform.

---4---
---Identity coloumn
---Identity column has two values one is the starting value and the other one is incremental value i.e) (1,1)

---5---
---diff. commit and rollback
---commit to save the changes. rollback is to undo the action.

---6---
---Filtered index
--- filtered index is we can get selected index and their values in the output.

---7---
---join and its types
--- join is used to join more than one table.types of join is inner join, outer join, left join, right join.

---8---
---primary and foreign key
---to refer a key from one table to other by using primary key.

---9---
---procedure and function
--- procedure is a set of instruction. Function is used to perform a instruction.

---10---
---Clustered index 
--- cluster is used grouping the data by using queries.


create database organisation
use organisation
CREATE TABLE Worker 
(
	WID INT PRIMARY KEY ,
	F_NAME CHAR(25),
	L_NAME CHAR(25),
	SALARY MONEY,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
	)

	INSERT INTO WORKER VALUES (101, 'Monika', 'Arora', 100000, '14-02-2020 09:00:00', 'HR'),
        (102, 'Niharika', 'varma', 80000, '14-06-2011 09:00:00', 'ADMIN'),
        (103, 'Vishal', 'Singhal', 300000, '14-02-2020 09:00:00', 'HR'),
        (104, 'Amithabh', 'Singh', 500000, '14-02-2020 09:00:00', 'ADMIN'),
        (105, 'Vivek', 'Bhati', 500000, '14-06-2011 09:00:00', 'ADMIN'),
        (106, 'Vipul', 'Diwan', 200000, '14-06-2011 09:00:00', 'ACCOUNT'),
        (107, 'Satish', 'Kumar', 75000, '14-01-2020 09:00:00', 'ACCOUNT'),
        (108, 'Geetika', 'Chauhan', 90000, '14-04-2020 09:00:00', 'ADMIN')

CREATE TABLE Bonus
(
	W_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATETIME,
	FOREIGN KEY (W_REF_ID)REFERENCES Worker(WID) ON DELETE CASCADE
	)

	INSERT BONUS VALUES(101, 5000, '16-02-2020'),
        (102, 3000, '16-06-2011'),
        (103, 4000, '16-02-2020'),
        (104, 4500, '10-02-2020'),
        (105, 3500, '16-06-20211')

CREATE TABLE Title
(
	W_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (W_REF_ID)
		REFERENCES Worker(WID)
        ON DELETE CASCADE
)
INSERT INTO Title (W_Ref_id, Worker_Title, Affected_From) VALUES
 

(101, 'Manager', '08-02-2020 00:39:00'),
 (102, 'Executive', '08-05-2020 00:39:00'),
 (103, 'Executive', '08-05-2020 00:39:00'),
 (104, 'Manager', '08-05-2020 00:39:00'),
 (105, 'Asst. Manager', '08-05-2020 00:39:00'),
 (106, 'Executive', '08-05-2020 00:39:00'),
 (107, 'Lead', '08-05-2020 00:39:00'),
 (108, 'Lead', '08-05-2020 00:39:00')
---1
CREATE synonym employee for worker
select* from employee
---2
select concat(f_name,l_name) as complete_name from worker

---3
select * from  worker order by f_name asc

---4
select* from worker where salary  between 100000 and 500000

---5
select count(department) as dept_count, department from workers group by department 

--7  simple interest
create function SI(@p int, @n int, @r int)
 return int
 begin
 as
  return (@p*@n*@r)/100
  end

  select dbo.SI(2000,2,2) as result

  ---6
  create trigger trg_update
on title
FOR update
as
begin
    print 'update  data'
end
drop trigger trg_update

---8
create procedure worker_avg_salary
   as
   begin
   select wid,f_name,department from worker
   end
   exec worker_avg_salary
  create procedure worker_avg_salary(@avgsalary int output)
   as
   begin
   select @avgsalary = avg(salary),'Total salary details' from worker
   end
   declare @totalsalary int
   exec sp_batch1_salary.@totalsalary output
   print @totalsalary
   select * from worker
   ---10
   select * from worker

BEGIN TRANSACTION
    insert into worker values(101,'monika') 
    SAVE TRANSACTION insert_stmt
    delete from worker where id = 001  
ROLLBACK TRANSACTION insert_stmt
COMMIT TRANSACTION









