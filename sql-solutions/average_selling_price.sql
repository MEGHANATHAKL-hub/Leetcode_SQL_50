select a.product_id, round(sum(price * units)/ sum( units ), 2) as average_price
from Prices as a
left join UnitsSold as b on a.product_id = b.product_id
where purchase_date between a.start_date and a.end_date
group by product_id
