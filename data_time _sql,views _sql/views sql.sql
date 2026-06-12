create database views;
use views;
create table emp_old(
emp_id int primary key,
first_name varchar(20),
last_name varchar(20),
designation varchar(20),
age int, 
salary decimal
);
insert into emp_old values(1,"melpadi","vinod","nia",30,50000);
insert into emp_old values(2,"gangarappu","sai siva","aeo",25,500000);
insert into emp_old values(3,"kodavali","lalith","mea",29,540000);
insert into emp_old values(4,"kama","hari","aso",40,50000);
insert into emp_old values(5,"kanchi","maha","actor",38,150000);
select * from emp_old;

create view employess as
select  last_name  FROM emp_old where salary IN (select salary FROM emp_old where designation = "nia");

select * from employess;


CREATE VIEW aboveavgsalary AS
SELECT emp_id, first_name, last_name, salary
FROM emp_old
WHERE salary > (SELECT AVG(salary) FROM emp_old);

select * from aboveavgsalary;

