select max(s.salary)
from salaries s
where salary not in (select max(salary) from salaries)
