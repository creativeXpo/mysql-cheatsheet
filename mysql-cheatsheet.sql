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

-- To Create a table with foreign key:

CREATE TABLE teacher (
  id INI PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100),
  phone VARCHAR(100),
  course VARCHAR(100),
  student_id INT,
  FOREIGN KEY (student_id),
  REFERENCES student(id)
);

