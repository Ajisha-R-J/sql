create database ORG001
use ORG001
CREATE TABLE Worker (Worker_id int not null primary key , First_name varchar(20),Last_name varchar(20),
Salary int,Joining_data datetime,Department varchar(20))
INSERT INTO Worker VALUES
        (101, 'Monika', 'Arora', 80000, '08-05-2020 05:39:00', 'Admin'),
        (102, 'Niharika', 'varma', 300000, '08-05-2020 05:39:00', 'HR'),
        (103, 'Vishal', 'Singhal', 500000, '08-05-2020 05:39:00', 'Admin'),
        (104, 'Amithabh', 'Singh', 500000, '08-05-2020 05:39:00', 'Admin'),
        (105, 'Vivek', 'Ehati', 200000, '08-05-2020 05:39:00', 'Account'),
        (106, 'Vipul', 'Diwan', 75000, '08-05-2020 05:39:00', 'Account'),
        (107, 'Satish', 'Kumar', 90000, '08-05-2020 05:39:00', 'Admin'),
        (108, 'Geetika', 'Chauhan', 90000, '08-05-2020 05:39:00', 'HR')
select * from Worker
create table Bonus
(Worker_Ref_id int,Bonus_Amount int,Bonus_Date datetime ,Foreign key(Worker_Ref_id)
REFERENCES Worker(Worker_id)On DELETE Cascade) 

INSERT INTO Bonus 
    (Worker_Ref_id, Bonus_Amount, Bonus_Date) VALUES
        (101, 5000, '08-05-2020'),
        (102, 3000, '08-06-2020'),
        (103, 4000, '08-07-2020'),
        (104, 4500, '08-08-2020'),
        (105, 3500, '08-09-2020')
select * from bonus

CREATE TABLE Title (
    Worker_Ref_id INT,
    Worker_Title CHAR(25),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (Worker_Ref_id)
        REFERENCES Worker(Worker_Id)
        ON DELETE CASCADE
)
INSERT INTO Title 
    (Worker_Ref_id, Worker_Title, Affected_From) VALUES
 (101, 'Manager', '08-02-2020 05:39:00'),
 (102, 'Executive', '08-05-2020 05:39:00'),
 (103, 'Executive', '08-05-2020 05:39:00'),
 (104, 'Manager', '08-05-2020 05:39:00'),
 (105, 'Asst. Manager', '08-05-2020 05:39:00'),
 (106, 'Executive', '08-05-2020 05:39:00'),
 (107, 'Lead', '08-05-2020 05:39:00'),
 (108, 'Lead', '08-05-2020 05:39:00')
select * from Title
---(1)
SELECT First_name AS alias_name
FROM worker
---(2)
select upper (FIRST_NAME) from  worker
---(3)
select distinct department from worker
---(4)
select substring (first_name, 1,3) from worker
---(5)
select distinct len (department) from worker
---(6)
select concat(first_name, last_name) as complete_name from worker
---(7)
select * from worker where first_name in ('vipul') 
---(8)
select * from worker where department = 'admin '
---(9)
select * from worker where first_name like '%a'
---(10)
select * from worker where first_name like '%a%'