with temp as (select reports_to, count(employee_id) as reports_count, round(avg(age)) as average_age
from Employees
where reports_to is not null
group by reports_to)

select employee_id, b.name, a.reports_count, a.average_age
from temp as a
left join Employees as b on a.reports_to = b.employee_id
order by employee_id