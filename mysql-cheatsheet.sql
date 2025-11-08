-- 1. Common SQL Keywords

SELECT
FROM
WHERE
INSERT INTO
VALUES
UPDATE
SET
DELETE FROM
CREATE TABLE
ALTER TABLE
DROP TABLE
JOIN
INNER JOIN
LEFT JOIN
RIGHT JOIN
GROUP BY
ORDER BY
HAVING
LIMIT
DISTINCT

-- 2. Common Operators

+ (Addition)
- (Subtraction)
* (Multiplication)
/ (Division)
% (Modulo)
= (Equal)
<> or != (Not Equal)
> , < , >= , <= (Comparisons)
AND, OR, NOT (Logical Operators)
IN, BETWEEN, LIKE, IS NULL (Conditional Operators)

-- 3. Common Functions

-- String Functions 

CONCAT()
LENGTH()
LOWER()
UPPER()
TRIM()
REPLACE()
SUBSTRING()

-- Numeric Functions
SUM()
AVG()
COUNT()
MIN()
MAX()
ROUND()
ABS()

-- Date & Time Functions

NOW()
CURDATE()
CURTIME()
DATEDIFF()
DATE_ADD()
DATE_SUB()
YEAR()
MONTH()
DAY()

-- Conditional Functions

IF()
CASE WHEN THEN
IFNULL()
COALESCE()

-- 4. Common Conditions

WHERE column = value
WHERE column <> value
WHERE column BETWEEN value1 AND value2
WHERE column IN (value1, value2, value3)
WHERE column LIKE '%text%'
WHERE column IS NULL / IS NOT NULL
WHERE EXISTS (subquery)



-- # CREATING AND DISPLAYINGDATABASES

-- To create a Database: 
CREATE DATABASE institute; 

-- List of all the databases that THE user has permission to access: 
SHOW DATABASES;

-- To use a specified database:
USE institute;

-- To Delete a Specified database: 
DROP DATABASE institute;

-- To list all tables in the database: 
SHOW TABLES;

-- To get information about a specified table: 
DESCRIBE student;
DESC student;
SHOW COLUMNS FROM student;

-- # CREATING TABLES

-- To create a table: 
CREATE TABLE student (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100),
  phone VARCHAR(100),
  course VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

-- To Update a Table Record

UPDATE student
SET name = 'Golam Kibria',
    email = 'golam@example.com',
    phone = '01700000000',
    course = 'PHP'
WHERE id = 1;

-- To Create a table with foreign key:

CREATE TABLE teacher (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100),
  phone VARCHAR(100),
  course VARCHAR(100),
  student_id INT,
  FOREIGN KEY (student_id)
  REFERENCES student(id)
);

-- # MODIFYING TABLES

-- To change a table name: 
ALTER TABLE teacher 
RENAME instructor;

-- To add a Column to the table: 
ALTER TABLE instructor
ADD COLUMN address VARCHAR(100);

-- To change a column name:
ALTER TABLE instructor
RENAME COLUMN address TO expertise_in;

-- to change a column data type: 
ALTER TABLE instructor
MODIFY COLUMN name VARCHAR(128);

-- To delete a column: 
ALTER TABLE instructor
DROP COLUMN expertise_in;

-- To delete a table: 
DROP TABLE instructor;

-- # QUERYING DATA

-- An example of a single table query: 

