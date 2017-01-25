# Find the N-th biggest salary
select max(salary) as nthBiggestSalary
from salaries
where salary not in (
	select salary from (
		select salary from salaries order by salary desc limit 2
	) tmp
)