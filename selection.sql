-- Active: 1691236233630@@127.0.0.1@5432@university_management

-- create department table
CREATE TABLE IF NOT EXISTS department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- inset multiple rows
INSERT INTO department VALUES 
   (1, 'IT'),
   (2, 'HR'),
   (3, 'Sales'),
   (4, 'Marketing'),
   (5, 'Finance'); 

-- Select all rows from department table
SELECT * FROM department;

-- create employee table
CREATE TABLE IF NOT EXISTS employee (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    emp_email VARCHAR(50) NOT NULL,
    salary INT NOT NULL,
    joining_date DATE NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

-- insert multiple rows
INSERT INTO employee (emp_id, emp_name, emp_email, salary, joining_date, dept_id)
VALUES
    (1, 'John Doe', 'john.doe@example.com', 60000, '2020-01-15', 1),
    (2, 'Jane Smith', 'jane.smith@example.com', 55000, '2021-03-10', 2),
    (3, 'Michael Johnson', 'michael.johnson@example.com', 75000, '2019-07-22', 3),
    (4, 'Emily Brown', 'emily.brown@example.com', 65000, '2022-02-05', 1),
    (5, 'William Davis', 'william.davis@example.com', 70000, '2020-11-18', 3);

    


-- Select all rows from employee table

-- get all data
SELECT * FROM employee;

-- get specific columns without duplicates
SELECT DISTINCT emp_name  FROM employee;

-- get data with filtering
SELECT * FROM employee WHERE salary > 10000 AND salary < 0000;
SELECT * FROM employee WHERE salary > 10000 OR salary < 0000;
SELECT * FROM employee WHERE joining_date BETWEEN '2020-01-01' AND '2021-01-01';
-- not equals
SELECT * FROM employee WHERE emp_name <> 'John Doe';

-- sorting
-- ascending order
SELECT * FROM employee ORDER BY emp_name ASC;

-- limit offset
SELECT * FROM employee LIMIT 10 OFFSET 2;

-- get height salary
SELECT * FROM employee ORDER BY salary DESC LIMIT 1;

-- get 3rd height salary
SELECT * FROM employee ORDER BY salary DESC LIMIT 1 OFFSET 2;

-- IN NOT IN BETWEEN NOT BETWEEN LIKE NOT LIKE ILIKE NOT ILIKE

SELECT * FROM employee WHERE emp_name IN ('John Doe', 'Jane Smith');
SELECT * FROM employee WHERE emp_name NOT IN ('John Doe', 'Jane Smith');

SELECT * FROM employee WHERE salary BETWEEN 50000 AND 70000;

SELECT * FROM employee WHERE salary NOT BETWEEN 50000 AND 70000;


-- LIKE
-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

-- There are two wildcards often used in conjunction with the LIKE operator:

--# % The percent sign represents zero, one, or multiple characters
--# _ The underscore sign represents one, single character

-- find all employee whose name start with J
SELECT * FROM employee WHERE emp_name LIKE 'J%';

-- find all employee whose name end with n
SELECT * FROM employee WHERE emp_name LIKE '%n';

-- find all employee whose name contain n
SELECT * FROM employee WHERE emp_name LIKE '%n%';

-- The LIKE operator is case sensitive, if you want to do a case insensitive search, use the ILIKE operator instead.
SELECT * FROM employee WHERE emp_name ILIKE 'J%';


-- find all employee whose name contain n at 1st position
SELECT * FROM employee WHERE emp_name LIKE 'j%';

-- find all employee whose name contain n at 2nd position
SELECT * FROM employee WHERE emp_name LIKE '_n%';

-- find all employee whose name contain n at 3rd position
SELECT * FROM employee WHERE emp_name LIKE '__n%';

-- Is NULL
SELECT * FROM employee WHERE emp_name IS  NULL;





