-- Create a new database
CREATE DATABASE myDatabase;

-- Use the new database
USE myDatabase;

-- Create a new table
CREATE TABLE myTable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL CHECK (age > 50)
);

-- Insert some data into the table
INSERT INTO myTable (name, age) VALUES ('Alice', 60);

-- select the data from the table
SELECT * FROM myTable;

-- Drop the table
DROP TABLE myTable;

-- Drop the database
DROP DATABASE myDatabase;

-- Create a new table with a foreign key constraint
CREATE TABLE parentTable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL CHECK (age > 50)
);

-- Create a new table with a foreign key constraint
CREATE TABLE childTable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL CHECK (age > 50),
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES parentTable(id)
);

-- Insert some data into the parent table
INSERT INTO parentTable (name, age) VALUES ('Bob', 60);

-- Insert some data into the child table
INSERT INTO childTable (name, age, parent_id) VALUES ('Charlie', 70, 1);

-- Select the data from the child table
SELECT * FROM childTable;

SELECT COALESCE(NULL, 'default value') AS result;

SELECT CURRENT_DATE AS today;

SELECT EXTRACT(MONTH FROM CURRENT_DATE) AS month,
       EXTRACT(YEAR FROM CURRENT_DATE) AS year;