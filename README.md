# SQL Practice Repository

This repository contains my SQL practice exercises while learning database design and SQL fundamentals. It includes examples of database creation, table creation, CRUD operations, sorting, constraints, and basic database relationship design.

## 📚 Topics Covered

* Creating databases
* Creating tables
* Inserting records
* Retrieving data using `SELECT`
* Filtering records using `WHERE`
* Updating records using `UPDATE`
* Deleting records using `DELETE`
* Sorting data using `ORDER BY`
* Using Primary Keys
* Database normalization concepts
* Foreign Key relationship design
* Composite Primary Keys
* Many-to-One and Many-to-Many relationships

---

## Project 1: `college_db`

This database demonstrates basic SQL operations.

### Table

**students**

| Column | Data Type   |
| ------ | ----------- |
| id     | INT         |
| name   | VARCHAR(10) |
| age    | INT         |
| salary | DOUBLE      |
| cgpa   | FLOAT       |

### Operations Performed

* Create database
* Create table
* Insert student records
* Display all students
* Filter students based on age
* Update student ages
* Sort students in ascending and descending order
* Delete records

---

## Project 2: `misrishah_db`

This database stores sample employee-like information for practice.

### Table

**homies**

| Column  | Data Type         |
| ------- | ----------------- |
| rest_id | INT (Primary Key) |
| name    | VARCHAR(30)       |
| salary  | DOUBLE            |
| city    | VARCHAR(20)       |

### Operations Performed

* Create database
* Create table with Primary Key
* Insert multiple records
* Practice data storage with different numeric values

---

## Database Relationship Practice

The repository also includes examples of relational database design concepts.

### One-to-Many Relationship

```
Department
-----------
DeptID (PK)
DeptName

Employee
-----------
EmpID (PK)
Name
DeptID (FK)
```

One department can have multiple employees.

---

### Student and Department Relationship

```
Department
-----------
DeptID (PK)
DeptName

Student
-----------
StudentID (PK)
Name
DeptID (FK)
```

Each student belongs to one department, while a department can have many students.

---

### Many-to-Many Relationship

```
Student
-----------
StudentID (PK)
Name
Age

Course
-----------
CourseID (PK)
CourseName

Enrollment
-----------
StudentID (FK)
CourseID (FK)

Composite Primary Key:
(StudentID, CourseID)
```

A student can enroll in multiple courses, and each course can have multiple students.

---

## Skills Practiced

* SQL Fundamentals
* Database Creation
* Table Design
* CRUD Operations
* Data Filtering
* Data Sorting
* Primary Keys
* Foreign Keys
* Composite Keys
* Database Relationships

---

## Technologies

* SQL
* MySQL

---

## Purpose

This repository serves as my personal SQL learning journey and practice collection. It will continue to grow as I learn advanced SQL topics such as:

* JOINs
* Aggregate Functions
* GROUP BY
* HAVING
* Subqueries
* Views
* Indexes
* Stored Procedures
* Triggers
* Transactions
* Database Optimization

---

-- Create a simple table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade VARCHAR(10)
);

-- Insert some data
INSERT INTO students (id, name, age, grade) VALUES
(1, 'Ali', 20, 'A'),
(2, 'Sara', 22, 'B'),
(3, 'Zain', 21, 'A');

-- Select students with grade 'A'
SELECT name, age
FROM students
WHERE grade = 'A';

-- Count students per grade
SELECT grade, COUNT(*) AS total
FROM students
GROUP BY grade;

SELECT *
FROM Students
ORDER BY Age ASC;
SELECT *
FROM Students
ORDER BY Age DESC;
CREATE TABLE Students
(
    StudentID INT,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(30)
);
INSERT INTO Students
VALUES
(1, 'Ali', 20, 'Computer Science');
INSERT INTO Students
VALUES
(2, 'Ahmed', 21, 'Software Engineering'),
(3, 'Sara', 19, 'Computer Science'),
(4, 'Ayesha', 22, 'Information Technology');
-- 1. Table banana
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    marks INT
);

-- 2. Data insert karna
INSERT INTO students (name, age, marks) VALUES ('hareem', 20, 85);
INSERT INTO students (name, age, marks) VALUES ('Sara', 21, 92);
INSERT INTO students (name, age, marks) VALUES ('Umar', 19, 78);
INSERT INTO students (name, age, marks) VALUES ('Meerab', 22, 95);

-- 3. Data update karna (misaal: Ahmed ke marks badalna)
UPDATE students
SET marks = 88
WHERE name = 'Ahmed';

-- 4. Data delete karna (misaal: ek student remove karna)
DELETE FROM students
WHERE name = 'Sara';

-- 5. Sabhi data dekhna
SELECT * FROM students;

-- 6. Sabse zyada marks wala student dhoondna
SELECT name, marks
FROM students
ORDER BY marks DESC
LIMIT 1;

-- 7. Marks ke hisaab se sort karna (highest se lowest)
SELECT * FROM students
ORDER BY marks DESC;

-- 8. Sirf wo students jinke marks 80 se zyada hain
SELECT * FROM students
WHERE marks > 80;
