-- List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", e.gender as "Gender", s.salary as "Salary" from employees e
inner join salaries s on e.emp_no = s.emp_no
-- List employees who were hired in 1986.
select * from employees where hire_date like '1986%' 
--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select m.dept_no as "Department Number", d.dept_name as "Department Name", m.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", m.from_date as "From Date", m.to_date as "To Date" 
from dept_manager m 
inner join departments d on m.dept_no = d.dept_no
inner join employees e on e.emp_no = m.emp_no
-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no as "Employee Number", a.last_name as "Last Name", a.first_name as "First Name", d.dept_name as "Department Name"
from dept_emp e
inner join departments d on e.dept_no = e.dept_no
inner join employees a on a.emp_no = e.emp_no
-- List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees 
where first_name = 'Hercules' and last_name like 'B%'
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select d.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", a.dept_name as "Department Name"
from dept_emp d
inner join employees e on d.emp_no = e.emp_no
inner join departments a on a.dept_no = d.dept_no
where a.dept_name = 'Sales'
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select d.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", a.dept_name as "Department Name"
from dept_emp d
inner join employees e on d.emp_no = e.emp_no
inner join departments a on a.dept_no = d.dept_no
where a.dept_name in ('Sales','Development')
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name as "Last Name", count(last_name) as "Last Name Frequency" from employees
group by last_name 
order by count desc