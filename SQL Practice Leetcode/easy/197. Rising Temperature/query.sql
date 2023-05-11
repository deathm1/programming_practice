 

-- Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

-- Return the result table in any order.

-- The query result format is in the following example.

select W1.id
from Weather as W1, Weather as W2
where DATEADD(day, -1, W1.recordDate) = W2.recordDate and W1.temperature > W2.temperature;