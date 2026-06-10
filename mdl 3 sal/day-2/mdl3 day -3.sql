CREATE DATABASE emp;
use emp;

create table emp_info(
id int primary key,
firstname Varchar(20),
lastname Varchar(20),
age int,
city Varchar(20),
state Varchar(20)
);


insert into emp_info values(101,"Melpadi","Vinod",20,"plmnr","Ap");
insert into emp_info values(102,"Kavadi","Madhu",19,"Gudiyat","tn");
insert into emp_info values(103,"Melpadi","Sathya",27,"chennai","mp");
insert into emp_info values(104,"Melpadi","Sampath",40,"chittor","Ap");
insert into emp_info values(105,"Melpadi","chithra",30,"trpt","tp");
select * from emp_info;

desc emp_info;
select firstname,last_name from emp_info;
select count(id)from emp_info;
select firstname,lastname from emp_info;
select firstname,lastname as LastName from emp_info;
select*from emp_info where age>20;
select*from emp_info where age>30;
select*from  emp_info where age>25 and age<30;
select*from emp_info where firstname like'M%';
select*from emp_info where lastname like 'V%';
select*from emp_info where lastname like 'M%';
select*from emp_info where age=20 or age=27;
select*from emp_info where age in (40,30);
select*from emp_info where city like '%G%';
select firstname,lastname,city from emp_info where id>103;
select firstname,lastname,city from emp_info where id=104;
select*from emp_info where age like'%104';
select city,state from emp_info where age>30;
select*from emp_info where age=20 and state='ap';
select id,firstname,age,city,state from emp_info where age between 20 and 30;
 



