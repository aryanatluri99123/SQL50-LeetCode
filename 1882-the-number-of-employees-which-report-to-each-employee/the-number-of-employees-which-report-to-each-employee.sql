SELECT E1.employee_id, E1.name, COUNT(E.employee_id) reports_count, ROUND(AVG(E.age)) average_age 
FROM Employees E1 INNER JOIN Employees E 
ON E1.employee_id = E.reports_to 
GROUP BY E1.employee_id, E1.name 
ORDER BY employee_id