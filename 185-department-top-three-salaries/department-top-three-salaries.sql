select d.name as Department, E.name as Employee, e.salary
from department d, employee e, employee e2
where d.id = e.departmentid and e.departmentid = e2.departmentid and e.salary <= e2.salary
group by d.id, e.name having count(distinct e2.salary) <= 3
order by d.name, e.salary desc;















