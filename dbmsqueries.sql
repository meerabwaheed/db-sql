CREATE DATABASE home_db;
USE home_db;
CREATE TABLE students(
   id INT,
   name VARCHAR(20),
   age INT,
   salary DOUBLE,
   cgpa FLOAT
);
INSERT INTO students VALUES(1,'meerab',19,72000,3.75);
INSERT INTO students VALUES(2,'aahil',12,2000);
INSERT INTO students VALUES(3,'mahad',10,2000);
INSERT INTO students VALUES(4,'faran',9,52000);
SELECT * From students;

