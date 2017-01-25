# Find how many people according to gender are born between the given dates
select e.gender, count(*) as total
from employees e
where e.birth_date between cast('1960-01-01' as Date) and cast('1982-12-31' as Date)
group by e.gender
	
    
		