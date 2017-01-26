# Find duplicate rows

select *, count(*) as occurance
from employees e
group by e.birth_date, e.first_name, e.last_name, e.gender, e.hire_date
having count(*) > 1

