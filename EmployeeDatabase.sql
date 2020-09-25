-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

--- Database Creation---
CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL
);
SELECT * FROM dept_emp;

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

SELECT * FROM departments;

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL
);

SELECT * FROM dept_manager;

CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title" VARCHAR   NOT NULL,
    "birthdate" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL
);

SELECT * FROM employees;

CREATE TABLE "title" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_title" PRIMARY KEY (
        "title_id"
     )
);

SELECT * FROM title;

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

SELECT * FROM salaries;


ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "salaries" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "salaries" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "title" ("title_id");

---Data Analysis----

--1) List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT salaries.emp_no, first_name, last_name, sex, salary
FROM salaries
INNER JOIN employees
ON salaries.emp_no = employees.emp_no;

--2) List first name, last name, and hire date for employees who were hired in 1986.
SELECT hire_date, first_name, last_name
FROM employees
WHERE hire_date 
BETWEEN '1986-01-01' AND '1986-12-31';

--3) List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT employees.first_name, employees.last_name, dept_manager.emp_no, departments.dept_name, dept_manager.dept_no
FROM employees
INNER JOIN dept_manager 
ON employees.emp_no=dept_manager.emp_no
INNER JOIN departments
ON departments.dept_no=dept_manager.dept_no;


--4)List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

--5)List first name, last name, and sex for employees whose 
--first name is "Hercules" and last names begin with "B."

--6)List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

--7)List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

--8)In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.





