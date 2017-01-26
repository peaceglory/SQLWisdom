# Find all employees who are also managers

select e.first_name, e.last_name
from dept_manager dm
left join employees e on dm.emp_no = e.emp_no