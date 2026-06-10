create database emp_old;
use emp_old;
create table emp_old(
emp_id int primary key,
first_name varchar(20),
last_name varchar(20),
designation varchar(20),
age int, 
salary decimal
);

insert into emp_old values(1,"melpadi","vinod","nia",30,50000,);
insert into emp_old values(2,"gangarappu","sai siva","aeo",25,500000);
insert into emp_old values(3,"kodavali","lalith","mea",29,540000);
insert into emp_old values(4,"kama","hari","aso",40,50000);
insert into emp_old values(5,"kanchi","maha","actor",38,150000);
select *from emp_old
select emp_id, first_name,age,designation from emp_old where designation ="nia";
select first_name,salary from emp_old where designation like '%actor%';
select*from emp_old where first_name like '%kodavali';
select*from emp_old where last_name like '%vinod';
set sql_safe_updates=0;
update emp_old set designation='data engineering' where first_name='kama';
update emp_old set first_name='gangarappu'where last_name='sai siva';
update emp_old set age=age+1 where first_name='melpadi';
update emp_old set designation='mea'where age in (30,38);
update emp_old set salary=salary+50000 where salary<=150000;
update emp_old set salary=salary+500000 where salary<=25000;
update emp_old set  salary =salary+4500 where salary>=150000;
select*from emp_old;