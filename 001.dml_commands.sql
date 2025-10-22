-- Create database
create database amazon;

-- Use the amazon database
use amazon;

-- Create a table employee with emp_id as int
create table employee (emp_id int);

-- Display the structure of the employee table
describe employee;

-- Alter table and add column emp_name as varchar(50) to the employee table
alter table employee add column emp_name varchar(50);

-- Display all columns emp_id and emp_name from the employee table
select * from employee;

-- Alter table and add column emp_number as bigint to the employee table
alter table employee add column emp_number bigint;

select * from employee;

-- Alter table and drop column emp_number from the employee table
alter table employee drop column emp_number;

select * from employee;

-- Rename the table employee to amazon_emp
rename table employee to amazon_emp;

-- This will give an error as the table name is changed
-- select * from employee;

-- This will work
select * from amazon_emp;

-- Rename the column emp_id to amazon_id in the amazon_emp table (fixed typo)
alter table amazon_emp rename column emp_id to amazon_id;

select * from amazon_emp;

-- Remove all records from the amazon_emp table
truncate table amazon_emp;

select * from amazon_emp;

-- Drop the amazon_emp table
drop table amazon_emp;

-- This will give an error as the table is dropped
-- select * from amazon_emp;

-- Drop the amazon database
drop database amazon;
