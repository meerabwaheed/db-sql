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


