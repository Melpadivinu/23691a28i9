use emp_old;
create table emp_info (
emp_id int primary key,
first_name Varchar(20),
last_name Varchar(20),
designation Varchar(30),
age int,
salary Decimal(10,2),
joining_date DATE
);

insert into emp_info values(101,"vinu","mela","nai",29,45000,"2020-11-06");
insert into emp_info values(102,"rahu","krish","india",40,50000,"2025-08-04");
insert into emp_info values(107,"aisha","shak","cana",27,43500,"2026-07-23");
insert into emp_info values(109,"vaith","isha","actor",35,70000,"2022-9-10");
insert into emp_info values(110,"mani","velu","aso",59,546000,"2027-10-12");
select *from emp_info;



SELECT emp_id,
       first_name,
       DATEDIFF(CURDATE(), joining_date) AS days_worked
FROM emp_info;
SELECT DATEDIFF(SYSDATE(), joining_date) AS days_worked
FROM emp_info;
SELECT DATEDIFF(SYSDATE(), joining_date) AS years_worked
FROM emp_info;


select DATE_FORMAT("2025-06-01","%y");
select DATE_FORMAT("2025-06-01","%m");
select DATE_FORMAT("2025-06-01","%d");
select DATE_FORMAT("2027-10-12","%m");
select DATE_FORMAT("2022-10-12","%m");


SELECT DAY(joining_date), joining_date
FROM emp_info;
SELECT MONTH(joining_date), joining_date
FROM emp_info;
SELECT year(joining_date), joining_date
FROM emp_info;


SELECT ADDDATE('2025-06-01', INTERVAL 10 DAY);
select ADDDATE('2022-10-12', INTERVAL 10 month);
SELECT ADDDATE('2025-06-01', INTERVAL 10 QUARTER);


SELECT first_name,
SUBDATE(joining_date, 15) AS before_15_days
FROM emp_info;
SELECT first_name,
SUBDATE(joining_date, 15) AS after_15_days
FROM emp_info;


SELECT first_name,
       DAY(joining_date) AS day_of_month
FROM emp_info;
SELECT first_name,
       month(joining_date) AS day_of_month
FROM emp_info;








select * from emp_info where first_name regexr'^v';
