--Pewlett Hackard employees of the corporation from the 1980s and 1990s
---Note:I imported the csv into the tables and used the insert query
--Deleting table query  
DROP TABLE departments;

--Department Table----
CREATE TABLE departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL
);
SELECT * FROM departments;
--------------------------------------
--Department and Employees
DROP TABLE dept_emp;
CREATE TABLE dept_emp(
	emp_no Int NOT NULL,
	dept_no VARCHAR NOT NULL
);
SELECT * FROM dept_emp;
--------------------------------------
--Department Managers
DROP TABLE dept_manager;
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL
);
SELECT * FROM dept_manager;
--------------------------------------
--Employees
DROP TABLE employees;
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);
SELECT * FROM employees;
--------------------------------------
--Salaries
DROP TABLE salaries;
CREATE TABLE salaries(
	emp_no Int,
	salary Int
);
SELECT * FROM salaries;
--------------------------------------
--Titles
DROP TABLE titles;
CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR
);
SELECT * FROM titles;





