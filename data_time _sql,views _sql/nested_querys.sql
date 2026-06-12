create database employeess;
use employeess;
create table emp(
emp_id int primary key,
name varchar(20),
salary decimal
);

insert into emp values(101,"vinod",35000);
insert into emp values(105,"melpadi",50000);
insert into emp values(107,"sandy",48000);
insert into emp values(110,"sunny",50000);
insert into emp values(123,"krish",76900);
select*from emp;

select name FROM emp WHERE salary > (SELECT avg(salary) FROM emp);

select name FROM emp where salary > (SELECT salary v FROM emp where name = "vinod");

select max(salary) AS secondhighestsalary FROM emp where salary < (select max(salary)FROM emp);


