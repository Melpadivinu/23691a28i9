CREATE DATABASE employee;

USE employee;

CREATE TABLE employee(
    id INT PRIMARY KEY,
    employe_name VARCHAR(50),
    age INT,
    department_name VARCHAR(75)
);
desc employee;
INSERT INTO employee (id, employe_name, age, department_name)
VALUES (102, 'vinu', 21, 'cse');

INSERT INTO employee
VALUES (103, 'madhu', 20, 'csm');

INSERT INTO employee
VALUES (104, 'sai', 22, 'b.com');

INSERT INTO employee
VALUES (105, 'melpadi', 25, 'ece');

SELECT * FROM employee;



