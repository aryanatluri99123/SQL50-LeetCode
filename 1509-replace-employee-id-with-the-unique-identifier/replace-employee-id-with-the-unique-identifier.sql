select EmployeeUNI.unique_id , Employees.name from Employees
LEFT JOIN EmployeeUNI ON EmployeeUNI.id = Employees.id