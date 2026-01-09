-- Q return all emp.Employess and order them
-- by id in desc order

SELECT CONCAT_WS(' ', FirstName, LastName) as 'Employee'
	,*
FROM emp.Employees
ORDER BY Employee ASC