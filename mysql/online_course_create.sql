CREATE DATABASE IF NOT EXISTS online_course;

USE online_course;

CREATE TABLE Student (	
    StudentID INT AUTO_INCREMENT PRIMARY KEY,	
    Name VARCHAR(255) NOT NULL,	
    Email VARCHAR(255) NOT NULL UNIQUE,	
    Phone VARCHAR(15)	
);

-- create table instructor
CREATE TABLE Instructor (	
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,	
    Name VARCHAR(255) NOT NULL,	
    Email VARCHAR(255) NOT NULL UNIQUE,	
    Phone VARCHAR(15),	
    Department VARCHAR(50)	
);	

-- create table course
CREATE TABLE Course (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Credits INT NOT NULL,
    InstructorID INT,
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID) ON DELETE CASCADE
);

-- delete item from instructor table
DELETE FROM Instructor WHERE InstructorID = 6;
-- see data from instructor table
SELECT * FROM Course WHERE InstructorID = 6;


CREATE TABLE Enrollment (	
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,	
    StudentID INT,	
    CourseID INT,	
    EnrollmentDate DATE NOT NULL,	
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),	
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID) ON DELETE CASCADE
);

INSERT INTO Student (Name, Email, Phone) VALUES ('Stephen Flynn', 'student1@example.com', '01663591799');
INSERT INTO Student (Name, Email, Phone) VALUES ('Nicole Gray', 'student2@example.com', '01806812451');
INSERT INTO Student (Name, Email, Phone) VALUES ('Joel Crosby', 'student3@example.com', '01610975112');
INSERT INTO Student (Name, Email, Phone) VALUES ('Bethany Greene', 'student4@example.com', '01896081004');
INSERT INTO Student (Name, Email, Phone) VALUES ('Mr. Andrew Blanchard', 'student5@example.com', '01405303315');
INSERT INTO Student (Name, Email, Phone) VALUES ('Lucas Wade', 'student6@example.com', '01577982213');
INSERT INTO Student (Name, Email, Phone) VALUES ('Andre Sandoval', 'student7@example.com', '01737104725');
INSERT INTO Student (Name, Email, Phone) VALUES ('Kim Osborne', 'student8@example.com', '01695448072');
INSERT INTO Student (Name, Email, Phone) VALUES ('Rachel Hansen', 'student9@example.com', '01793835685');
INSERT INTO Student (Name, Email, Phone) VALUES ('Curtis Kane', 'student10@example.com', '01370235346');
INSERT INTO Student (Name, Email, Phone) VALUES ('Jason Brown', 'student11@example.com', '01855033802');
INSERT INTO Student (Name, Email, Phone) VALUES ('Erika Barnes', 'student12@example.com', '01849420663');
INSERT INTO Student (Name, Email, Phone) VALUES ('Stephanie Clark', 'student13@example.com', '01373016637');
INSERT INTO Student (Name, Email, Phone) VALUES ('Aaron Stephenson', 'student14@example.com', '01791995584');
INSERT INTO Student (Name, Email, Phone) VALUES ('Leroy Green', 'student15@example.com', '01759524832');
INSERT INTO Student (Name, Email, Phone) VALUES ('Brandy Brown', 'student16@example.com', '01782690080');
INSERT INTO Student (Name, Email, Phone) VALUES ('Jeffrey Allen', 'student17@example.com', '01723434676');
INSERT INTO Student (Name, Email, Phone) VALUES ('Kathleen Curry', 'student18@example.com', '01894918488');
INSERT INTO Student (Name, Email, Phone) VALUES ('Crystal Gregory', 'student19@example.com', '01383249999');
INSERT INTO Student (Name, Email, Phone) VALUES ('Lisa Miller', 'student20@example.com', '01853788775');
INSERT INTO Student (Name, Email, Phone) VALUES ('Joshua Lee', 'student21@example.com', '01904624811');
INSERT INTO Student (Name, Email, Phone) VALUES ('Steven Banks', 'student22@example.com', '01787510523');
INSERT INTO Student (Name, Email, Phone) VALUES ('Lori Erickson', 'student23@example.com', '01525848426');
INSERT INTO Student (Name, Email, Phone) VALUES ('Troy Hall III', 'student24@example.com', '01444855019');
INSERT INTO Student (Name, Email, Phone) VALUES ('Nicole Steele', 'student25@example.com', '01919468682');
INSERT INTO Student (Name, Email, Phone) VALUES ('Stephen Reid', 'student26@example.com', '01548336030');
INSERT INTO Student (Name, Email, Phone) VALUES ('Ronald Green', 'student27@example.com', '01576159721');
INSERT INTO Student (Name, Email, Phone) VALUES ('Edward Johnson', 'student28@example.com', '01808625491');
INSERT INTO Student (Name, Email, Phone) VALUES ('Jennifer Dominguez', 'student29@example.com', '01587212442');
INSERT INTO Student (Name, Email, Phone) VALUES ('Michael Stone', 'student30@example.com', '01357851319');


INSERT INTO Instructor (Name, Email, Phone, Department) VALUES ('Christopher Lopez DDS', 'instructor1@example.com', '01425197095', 'History');
INSERT INTO Instructor (Name, Email, Phone, Department) VALUES ('Michael Weaver', 'instructor2@example.com', '01521998432', 'Math');
INSERT INTO Instructor (Name, Email, Phone, Department) VALUES ('Carlos Gonzalez', 'instructor3@example.com', '01434214844', 'History');
INSERT INTO Instructor (Name, Email, Phone, Department) VALUES ('Michael Sullivan', 'instructor4@example.com', '01808704608', 'Science');
INSERT INTO Instructor (Name, Email, Phone, Department) VALUES ('Carlos Sandoval', 'instructor5@example.com', '01559456523', 'Science');
INSERT INTO Instructor (Name, Email, Phone, Department) VALUES ('Sharon Taylor', 'instructor6@example.com', '01598063391', 'History');
INSERT INTO Instructor (Name, Email, Phone, Department) VALUES ('William Hardin', 'instructor7@example.com', '01830256594', 'Physics');
INSERT INTO Instructor (Name, Email, Phone, Department) VALUES ('Daniel Williams', 'instructor8@example.com', '01508269583', 'Math');
INSERT INTO Instructor (Name, Email, Phone, Department) VALUES ('Kevin Lopez', 'instructor9@example.com', '01472786780', 'Physics');
INSERT INTO Instructor (Name, Email, Phone, Department) VALUES ('Casey Wheeler', 'instructor10@example.com', '01468427287', 'Physics');


INSERT INTO Course (Title, Credits, InstructorID) VALUES ('Campaign Course', 5, 6);
INSERT INTO Course (Title, Credits, InstructorID) VALUES ('Sister Course', 3, 8);
INSERT INTO Course (Title, Credits, InstructorID) VALUES ('Growth Course', 4, 7);
INSERT INTO Course (Title, Credits, InstructorID) VALUES ('Billion Course', 3, 10);
INSERT INTO Course (Title, Credits, InstructorID) VALUES ('Various Course', 3, 9);
INSERT INTO Course (Title, Credits, InstructorID) VALUES ('Realize Course', 2, 6);
INSERT INTO Course (Title, Credits, InstructorID) VALUES ('Anyone Course', 4, 10);
INSERT INTO Course (Title, Credits, InstructorID) VALUES ('Commercial Course', 4, 5);
INSERT INTO Course (Title, Credits, InstructorID) VALUES ('Mean Course', 5, 4);
INSERT INTO Course (Title, Credits, InstructorID) VALUES ('Guess Course', 2, 6);


INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (16, 8, '2025-03-30');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (11, 7, '2024-12-05');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (10, 6, '2023-11-08');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (6, 10, '2025-02-25');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (18, 8, '2025-04-13');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (26, 3, '2025-05-02');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (15, 7, '2025-01-02');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (4, 7, '2024-01-13');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (4, 5, '2023-12-13');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (23, 9, '2023-11-20');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (28, 5, '2024-04-22');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (5, 2, '2023-05-22');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (11, 3, '2024-04-19');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (6, 6, '2024-07-14');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (14, 10, '2024-07-15');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (22, 7, '2023-07-11');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (22, 4, '2024-01-18');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (21, 4, '2024-07-30');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (27, 5, '2025-02-24');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (2, 3, '2025-02-20');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (29, 2, '2025-05-02');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (17, 8, '2023-07-24');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (6, 9, '2024-03-19');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (27, 3, '2024-02-26');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (24, 4, '2023-10-31');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (2, 9, '2024-09-26');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (18, 9, '2024-10-08');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (1, 3, '2025-04-23');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (11, 4, '2023-10-28');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (13, 9, '2024-04-22');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (12, 10, '2024-12-25');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (11, 3, '2024-11-14');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (2, 3, '2024-09-12');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (6, 8, '2025-04-27');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (27, 2, '2023-12-15');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (12, 1, '2023-07-25');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (12, 10, '2023-10-11');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (20, 10, '2024-06-14');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (30, 8, '2024-03-16');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (3, 9, '2025-04-15');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (4, 6, '2024-09-17');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (20, 5, '2024-09-16');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (2, 6, '2023-11-23');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (1, 10, '2024-10-03');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (29, 7, '2023-07-12');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (25, 1, '2024-07-31');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (1, 4, '2023-08-28');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (30, 5, '2024-05-25');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (9, 7, '2024-12-22');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (13, 6, '2024-02-23');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (20, 1, '2025-04-19');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (18, 8, '2025-04-20');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (30, 3, '2025-03-22');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (10, 1, '2024-07-13');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (8, 3, '2023-09-03');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (2, 6, '2024-02-29');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (26, 8, '2024-05-29');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (30, 8, '2025-04-17');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (17, 10, '2025-01-30');
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES (1, 10, '2025-05-06');

ALTER TABLE Instructor ADD COLUMN Salary INT;

select * from Instructor order by Salary desc;

UPDATE Instructor SET Salary = 85000 WHERE InstructorID = 1;
UPDATE Instructor SET Salary = 92000 WHERE InstructorID = 2;
UPDATE Instructor SET Salary = 78000 WHERE InstructorID = 3;
UPDATE Instructor SET Salary = 73000 WHERE InstructorID = 4;
UPDATE Instructor SET Salary = 95000 WHERE InstructorID = 5;
UPDATE Instructor SET Salary = 80000 WHERE InstructorID = 6;
UPDATE Instructor SET Salary = 88000 WHERE InstructorID = 7;
UPDATE Instructor SET Salary = 99000 WHERE InstructorID = 8;
UPDATE Instructor SET Salary = 70000 WHERE InstructorID = 9;
UPDATE Instructor SET Salary = 91000 WHERE InstructorID = 10;

