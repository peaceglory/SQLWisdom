# http://stackoverflow.com/questions/1313120/retrieving-the-last-record-in-each-group

-- select e.first_name, e.last_name, s.salary, s.from_date
-- from employees e
-- inner join salaries s on e.emp_no = s.emp_no
-- where s.salary > 150000
-- group by e.first_name, e.last_name

-- select *
-- from (
-- 	select e.first_name, e.last_name, s.salary, s.from_date
-- 	from employees e
-- 	inner join salaries s on e.emp_no = s.emp_no
-- 	where s.salary > 150000
-- ) as aux
-- inner join (
-- 	select aux.first_name, aux.last_name, aux.salary, max(aux.from_date)
--     from aux
--     group by aux.first_name, aux.last_name
-- ) as tmp
-- on aux.first_name = tmp.first_name 
-- and aux.last_name = tmp.last_name
-- and aux.salary = tmp.salary
-- and aux.from_date = tmp.from_date
-- 


SELECT *
FROM (
	select e.first_name, e.last_name, s.salary, s.from_date
	from employees e
	inner join salaries s on e.emp_no = s.emp_no
	where s.salary > 150000
) aux
WHERE id IN (
    SELECT MAX(salaries.from_date)
    FROM aux
    GROUP BY employees.first_name, employees.last_name
);