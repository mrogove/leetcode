--176. Second Highest
/*
  return the second highest overall salary
*/
SELECT MAX(e.Salary) AS SecondHighestSalary
FROM Employee e
WHERE e.Salary < (SELECT MAX(Employee.Salary) FROM Employee)
