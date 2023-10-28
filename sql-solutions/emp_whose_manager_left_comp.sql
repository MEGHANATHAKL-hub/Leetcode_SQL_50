with salary_range as (select *
from Employees
where salary < 30000 and manager_id is not null)

select employee_id 
from salary_range
where manager_id not in ( 
  select employee_id
  from Employees
  )
order by employee_id