CREATE DATABASE college_db;
USE college_db;
CREATE TABLE students(
   id INT,
   name VARCHAR(10),
   age INT,
   salary DOUBLE,
   cgpa FLOAT
);
INSERT INTO students VALUES(1,'mirza ',22,72000,3.75);
INSERT INTO students VALUES(2,'balach',18,2000);
INSERT INTO students VALUES(3,'ryyan',16,2000);
INSERT INTO students VALUES(4,'hammad',23,52000);
SELECT * From students;
SELECT * FROM students WHERE age > 18;
SET SQL_SAFE_UPDATES = 0;
UPDATE students SET Age = 10 WHERE ID = 1;
UPDATE students SET Age = 12 WHERE ID = 3;
UPDATE students SET Age = 11 WHERE ID = 2;

SELECT * FROM students ORDER BY  AGE ASC;
SELECT * FROM students ORDER BY AGE DESC;
UPDATE students SET AGE =11 WHERE ID = 1;

DELETE FROM * WHERE ID = 1;

CREATE DATABASE misrishah_db;
USE misrishah_db;
CREATE TABLE homies(
    rest_id INT PRIMARY KEY,
    name VARCHAR(30),
    salary DOUBLE,
    city VARCHAR(20)
);
INSERT INTO homies VALUES (1,'meerab',230000,'lahore');
INSERT INTO homies VALUES (2,'ayesha',210000,'lahore');
INSERT INTO homies VALUES (3,'habiba',250000,'lahore');
INSERT INTO homies VALUES (4,'salyha',230000000000,'lahore');
INSERT INTO homies VALUES (5,'saira anti',230040,'lahore');
INSERT INTO homies VALUES (6,'choti maama',2300700,'lahore');
INSERT INTO homies VALUES (7,'anti lala',2305000,'lahore');
INSERT INTO homies VALUES (8,'sara',264300,'lahore');
INSERT INTO homies VALUES (9,'hareem',30000,'lahore');
INSERT INTO homies VALUES (10,'adden',433000,'lahore');
INSERT INTO homies VALUES (11,'mera gudda',234450000,'lahore');
INSERT INTO homies VALUES (12,'sultan',230555000,'lahore');

Department(
    DeptID PRIMARY KEY,
    DeptName
)

-- Employee(
--     EmpID PRIMARY KEY,
--     Name,
--     DeptID FOREIGN KEY
-- )

Student(
    StudentID PRIMARY KEY,
    Name,
    Age
)

Department(
    DeptID PRIMARY KEY,
    DeptName
)
Student(
    StudentID PRIMARY KEY,
    Name,
    DeptID FOREIGN KEY
)
Course(
    CourseID PRIMARY KEY,
    CourseName
)
Enrollment(
    StudentID,
    CourseID,
    PRIMARY KEY(StudentID, CourseID),
    FOREIGN KEY(StudentID),
    FOREIGN KEY(CourseID)
)
