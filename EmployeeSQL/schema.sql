-- Create departments table
CREATE TABLE departments(
	dept_no VARCHAR not null primary key,
	dept_name VARCHAR not null
)
-- Create employees table
CREATE TABLE employees(
	emp_no VARCHAR not null primary key,
	birth_date VARCHAR not null,
	first_name VARCHAR not null,
	last_name VARCHAR not null,
	gender VARCHAR(6),
	hire_date VARCHAR not null
)
-- Create salaries table
CREATE TABLE salaries(
	emp_no VARCHAR not null primary key references employees(emp_no),
	salary VARCHAR(12) not null,
	from_date VARCHAR not null,
	to_date VARCHAR not null
)
-- Create titles table
CREATE TABLE titles(
	emp_no VARCHAR not null references employees(emp_no),
	title VARCHAR not null,
	from_date VARCHAR not null,
	to_date VARCHAR not null
)
-- Create department employees table
CREATE TABLE dept_emp(
	emp_no VARCHAR not null references employees(emp_no),
	dept_no VARCHAR not null references departments(dept_no),
	from_date VARCHAR not null,
	to_date VARCHAR not null
)
-- Create department manger table
CREATE TABLE dept_manager(
	dept_no VARCHAR not null references departments(dept_no),
	emp_no VARCHAR not null references employees(emp_no),
	from_date VARCHAR not null,
	to_date VARCHAR not null
)