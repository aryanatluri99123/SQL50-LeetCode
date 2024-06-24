select 
p.product_id,
IFNULL(round(sum(u.units*p.price)/sum(u.units),2),0) as average_price
from prices p
left join UnitsSold u 
on p.product_id = u.product_id
and purchase_date between start_date and end_date
group by product_id;