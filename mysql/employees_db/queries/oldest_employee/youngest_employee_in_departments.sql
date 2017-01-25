# Find youngest employee in each department
select *, max(e.birth_date) as youngest
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
group by d.dept_no

-- Not showing the real names of the youngest guys
-- http://stackoverflow.com/questions/15530947/mysql-query-to-find-the-name-and-age-of-the-youngest-employee-in-each-department




#select e.first_name, e.last_name, e.birth_date
#from employees emp
#inner join (
#	select *, max(e.birth_date) as youngest
#	from employees e
#	join dept_emp de on employees.emp_no = dept_emp.emp_no
#	join departments d on de.dept_no = d.dept_no
#	group by d.dept_no
#) res
#on emp.birth_date = res.youngest */

