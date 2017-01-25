# Find biggest salary in each department
select d.dept_no, d.dept_name, max(s.salary) as maxSalary

from salaries s
join dept_emp de on s.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no

group by d.dept_no
order by maxSalary desc