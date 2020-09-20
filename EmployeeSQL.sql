--Pewlett Hackard employees of the corporation from the 1980s and 1990s
---Note:I imported the csv into the tables and used the insert query
--Deleting table query  
DROP TABLE departments;

--Department and Employees
DROP TABLE dept_emp;
CREATE TABLE dept_emp(
	id SERIAL,
	emp_no Int NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (id)
);
SELECT * FROM dept_emp;
--------------------------------------
--Department Table----
CREATE TABLE departments(
	id SERIAL,
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (dept_emp_id) REFERENCES dept_emp(id)
);
SELECT * FROM departments;
--------------------------------------
--Department Managers
DROP TABLE dept_manager;
CREATE TABLE dept_manager(
	id SERIAl,
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (dept_emp_id) REFERENCES dept_emp(id)
);
SELECT * FROM dept_manager;
--------------------------------------
--Employees
DROP TABLE employees;
CREATE TABLE employees(
	id SERIAL,
	emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (id)
);
SELECT * FROM employees;
--------------------------------------
--Salaries
DROP TABLE salaries;
CREATE TABLE salaries(
	id SERIAL,
	emp_no Int,
	salary Int,
	PRIMARY KEY (id),
	FOREIGN KEY (dept_emp_id) REFERENCES dept_emp(id)
);
SELECT * FROM salaries;
--------------------------------------
--Titles
DROP TABLE titles;
CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR,
	PRIMARY KEY (id),
	FOREIGN KEY (employees_id) REFERENCES employees(id)
);
SELECT * FROM titles;





