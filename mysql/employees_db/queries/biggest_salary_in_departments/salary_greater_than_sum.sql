# Find employees with salary greater than given sum.
select e.first_name, e.last_name, s.salary, s.from_date
from employees e
inner join salaries s on e.emp_no = s.emp_no
where s.salary > 150000
-- group by e.first_name, e.last_name