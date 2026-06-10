CREATE DATABASE employees;
USE employees;
create table emp_new(
emp_id int primary key,
firstname Varchar(20),
lastname Varchar(20),
age int,
salary int
);
insert into emp_new values(101,"vinod","Melpadi",20,10000);
insert into emp_new values(102,"Thilak","Melpadi",50,100000);
insert into emp_new values(103,"Sai","Melpadi",30,30000);
insert into emp_new values(104,"Vishnu","Melpadi",45,510000);
insert into emp_new values(105,"praki","Melpadi",37,90000);
select * from emp_new;
alter table emp_new 
add column gender
varchar(10);
desc emp_new;
alter table emp_new drop column lastname;
alter table emp_new Rename column firstname to employeename;


