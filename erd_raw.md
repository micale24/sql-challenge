
dept_emp
-
emp_no INT PK
dept_no VARCHAR FK >- departments.dept_no

departments
-
dept_no VARCHAR PK 
dept_name VARCHAR


dept_manager
-
dept_no VARCHAR FK >- departments.dept_no
emp_no INT

employees
-
emp_no INT FK - dept_emp.emp_no
emp_title VARCHAR FK >- title.title_id
birthdate DATE
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATE

title
-
title_id VARHCAR PK
title VARCHAR

salaries
-
emp_no INT FK - dept_emp.emp_no
salary INT




