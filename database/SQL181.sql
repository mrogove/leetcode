/*181. Employees Earning More Than Their Managers*/
/*
  Return only the names of employees who earn more than managers
    simple left join with WHERE clause
*/

SELECT e.Name AS Employee
FROM Employee e
    LEFT JOIN Employee Managers
        ON e.ManagerId = Managers.Id
WHERE e.Salary > Managers.Salary
