# Write your MySQL query statement below
select contest_id, round((count(user_id)/(SELECT COUNT(user_id) FROM users) *100),2) as percentage
from users u
right join register r USING (user_id)
group by contest_id
order by percentage desc, contest_id;
