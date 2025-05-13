-- Active: 1691236233630@@127.0.0.1@5432@ph-university
-- Create courses TABLE
 CREATE TABLE courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    course_description TEXT NOT NULL,
    course_published_date DATE NOT NULL
        
);

-- insert data into courses TABLE
INSERT INTO courses (course_name, course_description, course_published_date) VALUES ('Python', 'Python is a programming language', '2021-01-01');

-- update data into courses TABLE
UPDATE courses 
SET 
course_name = 'Python Programming',
course_description = 'Python is a popular programming language'
WHERE course_id = 1;


-- delete data from courses TABLE       
DELETE FROM courses WHERE course_id = 2;



-- see courses TABLE
SELECT * FROM courses;

DROP Table courses


