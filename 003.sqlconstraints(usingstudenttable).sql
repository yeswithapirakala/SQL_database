--creating the database named details
CREATE database details;
USE details;
--creating the student_table with various constraints
CREATE TABLE student(
    id INT AUTO_INCREMENT,
    Name VARCHAR(10) NOT NULL,
    Age TINYINT UNSIGNED,
    Gender Enum('Male','Female','Other'),
    Percentage FLOAT UNSIGNED,
    Location VARCHAR(100) DEFAULT 'India',
    primary key(id)
);
--display structure of student_table
--auto increment,not null,unsigned,enum,default are the column constraints used here
--primary key is the table constraint used here

--constraints : rules or restrictions applied on the data in the table or on the columns
--not null : ensures that a column cannot have a null value
--unique : ensures that all values in a column are different
--primary key : uniquely identifies each record in a table (combination of not null and unique)
--foreign key : establishes relation between the two tables
--check : ensures that the value in a column meets a specific condition
--default : sets a default value for a column when no value is specified
--index : improves the speed of data retrieval operations on a table


DESCRIBE student;
--inserting some records into student_table
INSERT INTO student(name, age, gender, percentage, location) 
VALUES('jeon', 21, 'Female', 89.5, 'Korea'),
('mark', 22, 'Male', 92.0, 'USA'),
('li', 20, 'Other', 85.0, 'China'),
('sara', 19, 'Female', 95.0, 'UK'),
('raj', 23, 'Male', 88.0, 'India'),
('ana', 21, 'Female', 91.0, 'Brazil'),
('tom', 22, 'Male', 87.0, 'Canada');

SELECT * FROM student;

--inserting a record without location to check default value and the not null constraint
INSERT INTO student(name, age, gender, percentage) VALUES('kim', 20, 'Female', 90.0);
--entering a record with null name to check not null constraint
--that shows an error Name cannot be null
--INSERT INTO student(name, age, gender, percentage) VALUES(NULL, 21, 'Male', 85.0);


--adding the new constraints to the table
ALTER TABLE student
ADD CONSTRAINT chk_age CHECK (age > 18);

--inserting value that is with the age below 18
-- error with check constraint is volited
--INSERT INTO student(name, age, gender, percentage) VALUES('jungkook', 17, 'Male', 99.0);


ALTER TABLE student
ADD CLASS TINYINT NOT NULL;

DESCRIBE student;
SELECT * FROM student;
ALTER TABLE student
ADD branch VARCHAR(10) NOT NULL;

DESCRIBE student;
SELECT * FROM student;