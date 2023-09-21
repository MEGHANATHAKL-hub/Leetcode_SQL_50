with temp as (
select min(order_date) as immedeate, customer_id, count(distinct customer_id) as total
from Delivery 
group by customer_id)

select round((sum(if(b.immedeate = a.customer_pref_delivery_date, 1, 0))/sum(total)) *100, 2) as immediate_percentage 
from Delivery as a
inner join temp as b on a.customer_id = b.customer_id and a.order_date = b.immedeate