


-- Write an SQL query that reports the 
-- product_name, year, and price for each sale_id in the Sales table.

-- Return the resulting table in any order.

-- The query result format is in the following example.


select 
P.product_name, S.year, S.price
from 
Sales as S
inner join 
Product as P
on
S.product_id = P.product_id;
