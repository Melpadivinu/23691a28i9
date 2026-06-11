create database joins;
use joins;
create table cust_info(
customerid int primary key,
customersname varchar(20),
address varchar(30),
city varchar(20),
postalcode varchar(30),
country varchar(30)
);
 create table order_info(
 orderid int primary key,
 customerid int,
 employeeid int,
 orderdate int,
 shipperid int
 );
insert into cust_info values(101, 'vinu', 'plmr', 'india', 51408, 'uk');
insert into cust_info values(102, 'ravi', 'kumar', 'india', 517501, 'hyderabad');
insert into cust_info values(103, 'suresh', 'reddy', 'india', 560001, 'bangalore');
insert into cust_info values(104, 'priya', 'sharma', 'india', 600001, 'chennai');
insert into cust_info values(105, 'anita', 'patel', 'india', 400001, 'mumbai');
insert into cust_info values(106, 'rahul', 'singh', 'india', 700001, 'kolkata');
insert into cust_info values(107, 'deepa', 'nair', 'india', 682001, 'kochi');
insert into cust_info values(108, 'arjun', 'rao', 'india', 500001, 'hyderabad');
insert into cust_info values(109, 'kiran', 'das', 'india', 751001, 'bhubaneswar');
insert into cust_info values(110, 'meena', 'joshi', 'india', 302001, 'jaipur');

select * from cust_info;

INSERT INTO order_info
VALUES
(1, 101, 201, 20260105, 301),
(2, 102, 202, 20260110, 302),
(3, 103, 203, 20260112, 301),
(4, 104, 204, 20260115, 303),
(5, 105, 205, 20260118, 302),
(6, 106, 201, 20260120, 301),
(7, 107, 202, 20260122, 304),
(8, 108, 203, 20260125, 303),
(9, 109, 204, 20260128, 302),
(10, 110, 205, 20260130, 301);

select * from order_info;
 select c.customerid,c.customersname,c.city,o.orderid,o.orderdate from cust_info c LEFT JOIN order_info o ON c.customerid=o.customerid;
 
select*from cust_info c RIGHT JOIN order_info o ON c.customerid=o.customerid;
UPDATE order_info SET customerid = 104 WHERE orderid = 4;

SELECT * FROM cust_info c RIGHT JOIN order_info o ON c.customerid = o.customerid;

SELECT c.customersname, o.orderid FROM cust_info c RIGHT JOIN order_info o ON c.customerid = o.customerid;

SELECT c.customerid,c.customersname,o.orderid,o.orderdate FROM cust_info c LEFT JOIN order_info o ON c.customerid = o.customerid;

SELECT c.customerid,c.customersname,o.orderid,o.orderdate FROM cust_info c RIGHT JOIN order_info o ON c.customerid = o.customerid;


SELECT c.customerid,c.customersname,o.orderid,o.orderdate FROM cust_info c LEFT JOIN order_info o ON c.customerid = o.customerid 
UNION 
select c.customerid,c.customersname,o.orderid,o.orderdate from cust_info c INNER JOIN order_info o ON c.customerid = o.customerid;

SELECT c.customerid,c.customersname,o.orderid,o.orderdate FROM cust_info c LEFT OUTER JOIN order_info o ON c.customerid = o.customerid;
SELECT c.customerid,c.customersname,o.orderid,o.orderdate FROM cust_info c RIGHT OUTER JOIN order_info o ON c.customerid = o.customerid;


select c.customerid,c.customersname,c.city,o.orderid,o.customerid,o.employeeid FROM cust_info c INNER JOIN order_info o ON c.customerid = o.customerid;
select c.customerid,c.customersname,c.address,o.orderid, o.orderdate,o.shipperid FROM cust_info c LEFT OUTER JOIN order_info  o ON c.customerid = o.customerid;



