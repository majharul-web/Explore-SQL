-- Active: 1691236233630@@127.0.0.1@5432@students
-- ##CREATE DATABASE
CREATE DATABASE student;

-- ##DELETE DATABASE
DROP DATABASE test4

-- ##RENAME DATABASE
ALTER DATABASE student RENAME TO students

-- ##CREATE STUDENT TABLE

CREATE TABLE student(
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    cgpa NUMERIC(1,2)
)

-- ##RENAME TABLE NAME
ALTER TABLE student RENAME TO learners

-- ##DELETE TABLE
DROP TABLE learners

-- ## delete table all rows
TRUNCATE TABLE "user3"

-- ##CREATE user TABLE

CREATE TABLE "user3"(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    
)

-- ##INSERT INTO TABLE
INSERT INTO "user3" VALUES (1,'johndoe', 'john@gmail.com')
INSERT INTO "user3" (user_id, username, email, age) VALUES (2,'rifat', 'rifat@gmail.com',45)
INSERT INTO "user3"
 VALUES 
 (1,'rifat2', 'rifat2@gmail.com'),
 (2,'rifat3', 'rifat3@gmail.com')


-- ## ALTER TABLE
--add/remove column and change data type of a column
--rename column, set default value for a COLUMN
--add/remove constraints and rename TABLE

-- ##ADD COLUMN
ALTER TABLE "user3" 
ADD COLUMN password VARCHAR(255) DEFAULT 'admin123' NOT NULL;

-- ##Rename COLUMN
ALTER TABLE "user3"
RENAME COLUMN demo TO country;

ALTER TABLE "user3" 
ADD COLUMN demo INT;

-- ##REMOVE COLUMN
ALTER TABLE "user3"
DROP COLUMN password;

-- ##CHANGE COLUMN DATA TYPE
ALTER TABLE "user3"
ALTER COLUMN demo TYPE VARCHAR(255);

-- ##Set default value for a column
ALTER TABLE "user3"
ALTER COLUMN country SET DEFAULT 'banglasesh';

-- ##Add constraints
ALTER TABLE "user3"
ALTER COLUMN country SET NOT NULL;

-- ##Remove constraints
ALTER TABLE "user3"
ALTER COLUMN country DROP NOT NULL;

-- ## drop default value of COLUMN
ALTER TABLE "user3"
ALTER COLUMN demo DROP DEFAULT;

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


-- ##SEE TABLE Data
SELECT * FROM "user3"


