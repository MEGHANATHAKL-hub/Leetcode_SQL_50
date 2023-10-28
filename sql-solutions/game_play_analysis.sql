with temp as (select player_id, min(event_date) as min_date
from Activity
group by player_id)

select round(sum(case 
when DATE_ADD(temp.min_date, INTERVAL 1 DAY) = a.event_date then 1
else 0 end)/count(distinct temp.player_id), 2) as fraction
from temp as temp
join Activity as a on temp.player_id = a.player_id