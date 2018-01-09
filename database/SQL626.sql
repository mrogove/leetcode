--626. Exchange Seats

/*
Mary is a teacher in a middle school and she has a table seat storing students' names and their corresponding seat ids.
The column id is continuous increment.

Mary wants to change seats for the adjacent students.

Can you write a SQL query to output the result for Mary?

+---------+---------+
|    id   | student |
+---------+---------+
|    1    | Abbot   |
|    2    | Doris   |
|    3    | Emerson |
|    4    | Green   |
|    5    | Jeames  |
+---------+---------+

For the sample input, the output is:

+---------+---------+
|    id   | student |
+---------+---------+
|    1    | Doris   |
|    2    | Abbot   |
|    3    | Green   |
|    4    | Emerson |
|    5    | Jeames  |
+---------+---------+

Note:
If the number of students is odd, there is no need to change the last one's seat. 
*/

SELECT
	IF(s.id < (SELECT COUNT(*) FROM seat)
		, IF(s.id%2=0, s.id-1, s.id+1)
		, IF(s.id%2=0, s.id-1, s.id)
	  ) AS id

	, s.student
FROM seat s
ORDER BY id ASC;

/*
	This accounts for the edge case of last seat.
	If total's odd, last will not be swapped.
	If total's even, the prior seat will swap.

	The ambiguous naming that needed to be submitted led to confusing in the ORDER BY
*/