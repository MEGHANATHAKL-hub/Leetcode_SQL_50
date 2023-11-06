# Write your MySQL query statement below
with temp as (select customer_id, count(distinct product_key) as product_count, product_count_2
from Customer as a 
join (select count(product_key) as product_count_2 from Product) as b 
group by customer_id)

select customer_id
from temp
where product_count = product_count_2