select person_name 
from (
select turn, person_id, person_name, weight, SUM(weight) over (order by turn) as total_weight
from queue) x
where total_weight <= 1000
order by turn desc limit 1;