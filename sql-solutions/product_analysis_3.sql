# Write your MySQL query statement below
with temp as (select product_id, min(year) as first_year
from Sales
group by product_id )

select b.product_id, a.first_year, b.quantity, b.price
from temp as a 
left join Sales as b on a.product_id = b.product_id and a.first_year = b.year