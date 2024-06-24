select emp.name, bon.bonus
from employee  emp
left join bonus  bon on
emp.empId = bon.empId
where
    bon.bonus < 1000 or bon.bonus is NULL