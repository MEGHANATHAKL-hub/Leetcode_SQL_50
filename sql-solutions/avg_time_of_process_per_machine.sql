#query1
select machine_id, round(sum(if(activity_type = 'start', -1, 1) * timestamp)/count(distinct process_id),3) as processing_time
from Activity
group by machine_id

#query2
select a.machine_id, round(avg(b.timestamp - a.timestamp), 3) as processing_time
from Activity as a 
join Activity as b on a.machine_id = b.machine_id and a.process_id = b.process_id and a.activity_type = 'start' and b.activity_type = 'end'
group by 1