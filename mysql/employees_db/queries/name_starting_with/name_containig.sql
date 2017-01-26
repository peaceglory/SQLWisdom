# Find all employees which contain the word Slav, case insensitive
select *
from employees e 
where upper(e.first_name) like '%SLAV%' or upper(e.last_name) like '%SLAV%'