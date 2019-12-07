
select e.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", e.gender as "Gender", s.salary as "Salary" from employees e
inner join salaries s on e.emp_no = s.emp_no

select * from employees where hire_date like '1986%' 

select m.dept_no as "Department Number", d.dept_name as "Department Name", m.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", m.from_date as "From Date", m.to_date as "To Date" 
from dept_manager m 
inner join departments d on m.dept_no = d.dept_no
inner join employees e on e.emp_no = m.emp_no

select e.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name"
from employees e

select e.emp_no as "Employee Number", a.last_name as "Last Name", a.first_name as "First Name", d.dept_name as "Department Name"
from dept_emp e
inner join departments d on e.dept_no = e.dept_no
inner join employees a on a.emp_no = e.emp_no

select * from employees 
where first_name = 'Hercules' and last_name like 'B%'

select * from departments where dept_no in ('d007','d005')

select d.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", a.dept_name as "Department Name"
from dept_emp d
inner join employees e on d.emp_no = e.emp_no
inner join departments a on a.dept_no = d.dept_no
where a.dept_name in ('Sales','Development')

select last_name as "Last Name", count(last_name) as "Last Name Frequency" from employees
group by last_name 
order by count desc
