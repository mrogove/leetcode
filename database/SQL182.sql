/*182. Duplicate Emails*/
SELECT Person.Email
FROM Person
GROUP BY Person.Email
HAVING count(Person.Id) > 1
