-- 180. Consecutive Numbers
/*
Write a SQL query to find all numbers that appear at least three times consecutively.

+----+-----+
| Id | Num |
+----+-----+
| 1  |  1  |
| 2  |  1  |
| 3  |  1  |
| 4  |  2  |
| 5  |  1  |
| 6  |  2  |
| 7  |  2  |
+----+-----+

For example, given the above Logs table, 
1 is the only number that appears consecutively 
for at least three times.

+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+
*/

SELECT DISTINCT x.Num AS ConsecutiveNums
FROM Logs x
JOIN Logs y
	on x.id = y.id+1 AND x.num = y.num
JOIN Logs z
	on y.id = z.id+1 AND y.num = z.num