select contest_id, round((count( distinct b.user_id) /(select count(distinct user_id)
from Users)) * 100, 2) as percentage
from Users as a 
left join Register as b on a.user_id = b.user_id
where contest_id is not null
group by contest_id
order by percentage desc, contest_id