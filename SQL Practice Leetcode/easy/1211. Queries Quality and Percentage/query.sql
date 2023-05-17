-- We define query quality as:

-- The average of the ratio between query rating and its position.

-- We also define poor query percentage as:

-- The percentage of all queries with rating less than 3.

-- Write an SQL query to find each query_name, the quality 
-- and poor_query_percentage.

-- Both quality and poor_query_percentage should be rounded 
-- to 2 decimal places.

-- Return the result table in any order.

-- The query result format is in the following example.

select 
query_name,
round(avg(rating*1.00/position*1.00), 2) as 'quality',
round(((sum(
    case when rating < 3 then 1 else 0 end
)*1.00) / (count(*)*1.00))*100, 2) as 'poor_query_percentage'
from 
Queries group by query_name order by query_name desc;