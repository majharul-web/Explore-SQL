-- ##Department 
CREATE TABLE Department(
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(255) UNIQUE NOT NULL
);

INSERT INTO Department VALUES (1,'IT');
DELETE FROM Department WHERE department_id = 1;
SELECT * FROM Department;

-- ##Add foreign key CONSTRAINT in employee TABLE
CREATE TABLE Employee(
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    department_id INT,
    CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

INSERT INTO Employee (employee_name, department_id) VALUES ('John Doe', 1);
DELETE FROM Employee WHERE employee_id = 1;
SELECT * FROM Employee;