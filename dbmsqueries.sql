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
INSERT INTO students VALUES(4,'hammad',9,52000);
SELECT * From students;
SELECT * FROM students WHERE age > 8;
SET SQL_SAFE_UPDATES = 0;
UPDATE students SET Age = 10 WHERE ID = 4;
UPDATE students SET Age = 12 WHERE ID = 2;
UPDATE students SET Age = 11 WHERE ID = 3;


