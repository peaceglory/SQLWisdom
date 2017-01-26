# Find duplicates and show each row. For big tables this is slow since employees are traversed twice.

select *
from employees
where (birth_date, first_name, last_name, gender, hire_date) in (
	select birth_date, first_name, last_name, gender, hire_date
    from employees
    group by birth_date, first_name, last_name, gender, hire_date
    having count(*) > 1
)