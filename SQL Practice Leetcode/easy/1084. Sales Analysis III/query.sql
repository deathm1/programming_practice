

-- Write an SQL query that reports the 
-- products that were only sold in the 
-- first quarter of 2019. That is, 
-- between 2019-01-01 and 2019-03-31 inclusive.

-- Return the result table in any order.

-- The query result format is in the following example.


Select 
s.product_id, p.product_name
from 
Product as p 
left join 
Sales as s
on p.product_id = s.product_id
group by s.product_id, p.product_name
having min(s.sale_date) >= '2019-01-01' 
and max(s.sale_date) <= '2019-03-31';