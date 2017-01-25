# Find the oldest employee
select e.first_name, e.last_name, e.birth_date
from employees e
order by e.birth_date desc
limit 1