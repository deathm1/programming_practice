-- A single number is a number that appeared 
-- only once in the MyNumbers table.

-- Write an SQL query to report the largest single number. 
-- If there is no single number, report null.

-- The query result format is in the following example.



SELECT max(a.num) as 'num'
FROM
(SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) = 1) as a;