/* Query */

--SELECT *
--FROM employees

--Q1
SELECT emp_no, 
	last_name,
	first_name,
	sex,
	salary
FROM employees
WHERE salary IN
(
	SELECT salary
	FROM salaries
)

--Q2
SELECT first_name, 
	last_name,
	hire_date
FROM employees
WHERE hire_date = "%1986%" 

--Q3
SELECT dept_no, 
	dept_name, 
	emp_no,
	last_name,
	first_name
FROM departments
WHERE emp_no, last_name, first_name IN
(
	SELECT emp_no, last_name, first_name
	FROM employees
)

--Q4
SELECT emp_no, 
	last_name,
	first_name,
	dept_name
FROM employees
WHERE dept_name IN
(
	SELECT dept_name
	FROM departments
)
--Q5
SELECT first_name,
	last_name,
	sex
FROM employees
WHERE first_name = "Hercules",
	last_name = "B%"
	
--Q6
SELECT last_name, 
	first_name,
	dept_name
FROM employees
WHERE dept_name IN
(
	SELECT dept_name
	FROM departments
	WHERE dept_name = "Sales"
)

--Q7
SELECT last_name, 
	first_name,
	dept_name
FROM employees
WHERE dept_name IN
(
	SELECT dept_name
	FROM departments
	WHERE dept_name = "Sales" or 
		dept_name = "Development"
)

--Q8
Select COUNT(last_name)
FROM employees

