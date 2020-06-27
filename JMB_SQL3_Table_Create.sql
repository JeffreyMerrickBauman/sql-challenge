CREATE TABLE departments(
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(30),
	emp_no INTEGER PRIMARY KEY,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR(30),
	FOREIGN KEY (emp_no) REFERENCES dept_manager(emp_no)
);

CREATE TABLE employees(
	emp_no INTEGER,
	emp_title_id VARCHAR(30) PRIMARY KEY,
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date VARCHAR(30),
	FOREIGN KEY (emp_no) REFERENCES dept_manager(emp_no)
);

CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES dept_manager(emp_no)
);

CREATE TABLE titles(
	title_id VARCHAR(30),
	title VARCHAR(30),
	FOREIGN KEY (title_id) REFERENCES employees(emp_title_id)
);