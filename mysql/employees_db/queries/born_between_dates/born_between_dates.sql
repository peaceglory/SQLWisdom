# Find distinct employee name who are born between the given dates.
select distinct e.first_name
from employees e
where e.birth_date 
	between cast('1960-01-01' as Date) and cast('1975-12-31' as Date)
order by e.first_name