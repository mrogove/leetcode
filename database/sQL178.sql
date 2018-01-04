-- 178. Rank Scores
/*
Write a SQL query to rank scores. 

If there is a tie between two scores, 
	both should have the same ranking. 

Note that after a tie, 
	the next ranking number should be the next consecutive integer value. 

In other words, 
	there should be no "holes" between ranks. 

Example of desired output:
+-------+------+
| Score | Rank |
+-------+------+
| 4.00  | 1    |
| 4.00  | 1    |
| 3.85  | 2    |
| 3.65  | 3    |
| 3.65  | 3    |
| 3.50  | 4    |
+-------+------+

*/

SELECT s.Score
	 , x.Rank
FROM Scores s
JOIN (
	SELECT z.Score
		 , CAST((@curRank := @curRank + 1) AS UNSIGNED) AS Rank
	FROM (SELECT DISTINCT Score FROM Scores) z
	, (SELECT @curRank := 0) r
	ORDER BY z.Score DESC
) x
	ON x.Score = s.Score
ORDER BY 1 DESC,2