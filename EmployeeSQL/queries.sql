--List the employee number, last name, first name, sex, and salary of each employee.--

select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e 
join salaries s
on e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date 
from employees 
where hire_date 
between '1986-01-01' and '1986-12-31';

--List the manager of each department along with their department number, department name, 
--employee number, last name, and first name.

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
from dept_manager dm 
join departments d
on dm.dept_no = d.dept_no
join employees e
on dm.emp_no = e.emp_no;

--List the department number for each employee along with that 
--employee’s employee number, last name, first name, and department name.

select de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name 
from dep_emp de
join employees e
on de.emp_no = e.emp_no
join departments d
on de.dept_no = d.dept_no

--List first name, last name, and sex of each employee whose first name is 
--Hercules and whose last name begins with the letter B.

select first_name, last_name, gender
from employees 
where first_name = 'Hercules' and last_name like 'B%';


-- find dept number for the sales department 
select dept_no, dept_name
from departments 
where dept_name = 'Sales';
-- d007

--List each employee in the Sales department, including 
--their employee number, last name, and first name.

select d.dept_name, e.emp_no, e.last_name, e.first_name
from employees e
join dep_emp de
on e.emp_no = de.emp_no
join departments d
on de.dept_no = d.dept_no
where d.dept_no = 'd007';

-- find dept number for the development departments 
select dept_no, dept_name
from departments 
where dept_name = 'Development';
--d005

--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dep_emp de
on e.emp_no = de.emp_no
join departments d
on de.dept_no = d.dept_no
where de.dept_no = 'd007' or de.dept_no = 'd005';

--List the frequency counts, in descending order, of all the 
--employee last names (that is, how many employees share each last name).
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
order by count(last_name) desc;

