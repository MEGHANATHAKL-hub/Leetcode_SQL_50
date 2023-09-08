select *
from Cinema
where (id % 2 != 0 or id = 1) and description not like '%boring%'
order by rating desc