CREATE DATABASE IF NOT EXISTS online_course;

USE online_course;

CREATE TABLE Student (	
    StudentID INT AUTO_INCREMENT PRIMARY KEY,	
    Name VARCHAR(255) NOT NULL,	
    Email VARCHAR(255) NOT NULL UNIQUE,	
    Phone VARCHAR(15)	
);

CREATE TABLE Instructor (	
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,	
    Name VARCHAR(255) NOT NULL,	
    Email VARCHAR(255) NOT NULL UNIQUE,	
    Phone VARCHAR(15),	
    Department VARCHAR(50)	
);	
	
CREATE TABLE Course (	
    CourseID INT AUTO_INCREMENT PRIMARY KEY,	
    Title VARCHAR(255) NOT NULL,	
    Credits INT NOT NULL,	
    InstructorID INT,
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
        ON DELETE CASCADE
);

CREATE TABLE Enrollment (	
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,	
    StudentID INT,	
    CourseID INT,	
    EnrollmentDate DATE NOT NULL,	
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),	
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)	
);	

USE online_course;

INSERT INTO Student (Name, Email, Phone) VALUES ('Stephen Flynn', 'student1@example.com', '01663591799');

INSERT INTO Instructor (Name, Email, Phone, Department) VALUES ('Casey Wheeler', 'instructor10@example.com', '01468427287', 'Physics');

INSERT INTO Course (Title, Credits, InstructorID) VALUES ('Guess Course', 2, 6);

INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (1, 10, '2025-05-06');


-- Write an SQL query to insert a new enrollment record for a student (e.g., StudentID 5) into the course with the highest credit hours.
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate)
VALUES (
    5,
    (SELECT CourseID FROM Course ORDER BY Credits DESC LIMIT 1),
    CURDATE()
);

-- Write an SQL UPDATE query to assign a new instructor to a course (e.g., CourseID 3) by updating the InstructorID.
UPDATE Course
SET InstructorID = 4
WHERE CourseID = 3;

-- Write an SQL query to find the names of instructors who teach the most credits (total).
SELECT i.Name
FROM Instructor i
JOIN Course c ON i.InstructorID = c.InstructorID
GROUP BY i.InstructorID
ORDER BY SUM(c.Credits) DESC
LIMIT 1;


--Write an SQL query to list all students who are enrolled in more than two courses.
SELECT s.StudentID, s.Name, COUNT(e.CourseID) AS TotalCourses
FROM Student s
JOIN Enrollment e ON s.StudentID = e.StudentID
GROUP BY s.StudentID, s.Name
HAVING COUNT(e.CourseID) > 2 ORDER BY TotalCourses DESC;

--Given a table Instructor with a Salary column, write an SQL query to find the second-highest salary among instructors.
SELECT DISTINCT Salary
FROM Instructor
ORDER BY Salary DESC
LIMIT 1 OFFSET 1;

-- You have two tables, Instructor and Course. Use ON DELETE CASCADE on Course so that all courses are deleted when an instructor is removed.
-- Step 1: Drop the existing foreign key
ALTER TABLE Course DROP FOREIGN KEY Course_ibfk_1;

-- Step 2: Add the foreign key again with ON DELETE CASCADE
ALTER TABLE Course
ADD CONSTRAINT fk_course_instructor
FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
ON DELETE CASCADE;


DELETE FROM Instructor WHERE InstructorID = 6;

SELECT * FROM Course WHERE InstructorID = 6;

SELECT * FROM Instructor ORDER BY Salary DESC;

SELECT InstructorID, SUM(Credits) AS TotalCredits
FROM Course
GROUP BY InstructorID
ORDER BY TotalCredits DESC
LIMIT 1;




SELECT * FROM Enrollment;
SELECT * FROM Course;



SELECT StudentID, Name
FROM Student
ORDER BY Roll ASC;

SELECT Department, COUNT(*) AS TotalStudents
FROM Student
GROUP BY Department;
