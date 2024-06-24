select s.user_id, 
    round(avg(IF(c.action = 'confirmed',1,0)),2) as confirmation_rate
from signups s
left join confirmations c ON c.user_id = s.user_id
group by s.user_id;