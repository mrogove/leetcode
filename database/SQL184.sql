/*184. Department Highest Salary*/
/*
Write a SQL query to find employees who 
have the highest salary in each of the departments. 
For the above tables, Max has the highest salary 
 in the IT department and Henry has the highest salary
 in the Sales department.
*/
/*
desired output:
+------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| Sales      | Henry    | 80000  |
+------------+----------+--------+
*/


SELECT d.Name AS Department
	 , e.Name AS Employee
	 , e.Salary 
FROM
	Employee e
	, Department d
	,(SELECT DepartmentId,max(Salary) as top 
	  FROM Employee 
	  GROUP BY DepartmentId) t

WHERE e.DepartmentId = t.DepartmentId 
  AND e.Salary = t.top
  AND e.DepartmentId = d.id
