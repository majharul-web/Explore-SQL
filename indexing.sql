-- Active: 1691236233630@@127.0.0.1@5432@ph-university
EXPLAIN ANALYSE SELECT * FROM employee;

-- ##CREATE INDEX
CREATE INDEX employee_Name ON employee(first_name);