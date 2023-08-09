-- aggregate FUNCTION

SELECT AVG(salary) as avg_salary FROM employee;
SELECT SUM(salary) as sum_salary FROM employee;
SELECT MAX(salary) as max_salary FROM employee;
SELECT MIN(salary) as min_salary FROM employee;


SELECT dept_id, AVG(salary) as avg_salary FROM employee GROUP BY dept_id;

-- GROUP BY with JOIN
SELECT dept_name, AVG(salary) as avg_salary FROM employee INNER JOIN department ON employee.dept_id = department.dept_id GROUP BY dept_name;

-- GROUP BY with WHERE
SELECT dept_name, AVG(salary) as avg_salary FROM employee INNER JOIN department ON employee.dept_id = department.dept_id WHERE salary > 60000 GROUP BY dept_name;

-- HAVING
SELECT dept_name, AVG(salary) as avg_salary FROM employee INNER JOIN department ON employee.dept_id = department.dept_id GROUP BY dept_name HAVING AVG(salary) < 60000;


