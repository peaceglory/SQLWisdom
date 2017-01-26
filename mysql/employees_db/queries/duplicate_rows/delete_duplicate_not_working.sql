# Delete a dupblicate line - https://blogs.oracle.com/sql/entry/how_to_find_and_delete

-- delete from employees
-- where emp_no not in (
-- 	select min(emp_no)
-- 	from employees e
-- 	group by birth_date, first_name, last_name, gender, hire_date
-- 	having count(*) > 1	
-- )

delete from employees e1
inner join (
	select min(emp_no)
    from employees e2
    group by birth_date, first_name, last_name, gender, hire_date
    having count(*) > 1
) tmp