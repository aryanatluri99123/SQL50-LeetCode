select 
	substring(trans_date,1,7) as month,
	country,
	count(id) trans_count,
	SUM(if(state = 'approved',1,0)) approved_count,
	SUM(amount) trans_total_amount,
	SUM(if(state = 'approved',amount,0)) approved_total_amount
from transactions
group by month, country;