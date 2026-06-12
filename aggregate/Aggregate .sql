create database students;
use students;
create table student_info(
id int primary key,
name Varchar(20),
age int,
salary int,
gender Varchar(20)
);
insert into student_info values(101,"john",25,50000,"male");
insert into student_info values(102,"Robin",24,60000,"male");
insert into student_info values(103,"alya",25,35000,"female");
insert into student_info values(104,"madhu",32,68000,"male");
insert into student_info values(105,"yusuf",42,45000,"female");

select * from student_info;

select COUNT(*) FROM student_info;
select count(age) FROM student_info;
select count(distinct age) FROM student_info;
select count(gender) FROM student_info;
select count(distinct gender) FROM student_info;

select sum(salary) FROM student_info;

select sum(age) FROM student_info;
select sum(distinct age) FROM student_info;
select sum(id) FROM student_info;


select avg(age) FROM student_info;
select avg(salary) FROM student_info;

select min(salary) FROM student_info;
select min(age) FROM student_info;
select min(name) FROM student_info;

select max(salary) FROM student_info;
select max(age) FROM student_info;
select max(gender) From student_info;


