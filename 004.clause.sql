-- clause in sql
create database operators;
use operators;
CREATE TABLE emp(
    id INT AUTO_INCREMENT,
    Name VARCHAR(10) NOT NULL,
    Age TINYINT UNSIGNED,
    Gender Enum('Male','Female','Other'),
    Salary FLOAT UNSIGNED,
    primary key(id),
    check (Age>18)
);
DESCRIBE emp;
insert into emp(Name, Age, Gender, Salary) values('jeon', 21, 'Female', 5000.50),
('mark', 22, 'Male', 6000.00),
('li', 20, 'Other', 4500.75),
('sara', 19, 'Female', 7000.25),    
('raj', 23 , 'Male', 5500.00),
('ana', 21 , 'female', 6200.80);
SELECT * FROM emp;
--select name and salary from the table
select Name,Salary from emp;
--select all the records in the name column from the table
select Name from emp;
--select name whose salary is greater than 5500
select Name,Salary from emp where Salary>5500;
--where clause
--find all employees whose age is less than or equal to 21
select Name,Age from emp where Age<=21;
--group by clause
--select gender and count the number of employees in each gender
SELECT Gender, COUNT(*) AS empno FROM emp GROUP BY Gender;
--order by clause
--select name and salary of employees ordered by salary in descending order
SELECT Name, Salary FROM emp ORDER BY Salary DESC;
--having clause
--find the average salary of employees having average salary greater than 5500
SELECT Gender, AVG(Salary) AS avg_salary FROM emp GROUP BY Gender HAVING AVG(Salary) > 5500;


