select salary 
from (
	select salary 
    from salaries 
    order by salary desc
    limit 3
) as emp 
order by salary asc 
limit 1;