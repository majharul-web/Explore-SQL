-- Active: 1691236233630@@127.0.0.1@5432@ph-university
-- ## Create database
CREATE DATABASE "ph-university";

-- ## Create table
CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    hire_date DATE NOT NULL,
    department VARCHAR(50),
    job_title VARCHAR(50),
    salary NUMERIC(10, 2)
);

-- ## Insert data
INSERT INTO employee (first_name, last_name, email, hire_date, department, job_title, salary)
VALUES
    ('Sarah', 'Lee', 'sarah.lee@example.com', '2023-08-04', 'Finance', 'Financial Analyst', 65000),
    ('Robert', 'Taylor', 'robert.taylor@example.com', '2023-08-05', 'Sales', 'Sales Representative', 58000),
    ('Emily', 'Wong', 'emily.wong@example.com', '2023-08-06', 'IT', 'Data Scientist', 72000),
    ('David', 'Martinez', 'david.martinez@example.com', '2023-08-07', 'Finance', 'Accountant', 63000),
    ('Jennifer', 'Brown', 'jennifer.brown@example.com', '2023-08-08', 'Marketing', 'Marketing Manager', 80000),
    ('William', 'Wilson', 'william.wilson@example.com', '2023-08-09', 'HR', 'Recruiter', 59000),
    ('Linda', 'Nguyen', 'linda.nguyen@example.com', '2023-08-10', 'IT', 'Systems Administrator', 58000),
    ('James', 'Harris', 'james.harris@example.com', '2023-08-11', 'Sales', 'Sales Manager', 90000),
    ('Amanda', 'Miller', 'amanda.miller@example.com', '2023-08-12', 'Finance', 'Financial Controller', 85000),
    ('Daniel', 'Johnson', 'daniel.johnson@example.com', '2023-08-13', 'Marketing', 'Content Writer', 52000);

-- ## See data
SELECT * FROM employee;

-- ## Sub query
SELECT * FROM employee WHERE salary=(SELECT MAX(salary) FROM employee);

SELECT * FROM employee WHERE salary IN (SELECT salary FROM employee WHERE first_name LIKE '%a%');