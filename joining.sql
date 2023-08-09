-- Active: 1691236233630@@127.0.0.1@5432@university_management@public

-- INNER JOIN
SELECT * FROM employee INNER JOIN department ON employee.dept_id = department.dept_id;

-- use alias
SELECT emp_name, emp_email, salary, joining_date, dept_name FROM employee AS e INNER JOIN department AS d ON e.dept_id = d.dept_id;


-- LEFT JOIN
SELECT * FROM employee LEFT JOIN department ON employee.dept_id = department.dept_id;

-- RIGHT JOIN
SELECT * FROM employee RIGHT JOIN department ON employee.dept_id = department.dept_id;

-- FULL JOIN
SELECT * FROM employee FULL JOIN department ON employee.dept_id = department.dept_id;

-- CROSS JOIN
SELECT * FROM employee CROSS JOIN department;


-- Natural Join
SELECT * FROM employee NATURAL JOIN department;

SELECT * FROM employee;
-- Inserting 10 records with duplicate data



DROP Table employee;