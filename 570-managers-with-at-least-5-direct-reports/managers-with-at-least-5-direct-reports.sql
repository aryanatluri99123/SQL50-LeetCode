# Write your MySQL query statement below
select e.name
from Employee e
inner join Employee m 
ON e.id = m.managerId
GROUP BY m.managerId
HAVING COUNT(m.managerId) >= 5;