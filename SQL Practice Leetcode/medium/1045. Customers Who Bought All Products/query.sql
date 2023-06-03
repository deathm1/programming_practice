-- Input: 
-- Customer table:
-- +-------------+-------------+
-- | customer_id | product_key |
-- +-------------+-------------+
-- | 1           | 5           |
-- | 2           | 6           |
-- | 3           | 5           |
-- | 3           | 6           |
-- | 1           | 6           |
-- +-------------+-------------+
-- Product table:
-- +-------------+
-- | product_key |
-- +-------------+
-- | 5           |
-- | 6           |
-- +-------------+
-- Output: 
-- +-------------+
-- | customer_id |
-- +-------------+
-- | 1           |
-- | 3           |
-- +-------------+

-- Explanation: 
-- The customers who bought all the products (5 and 6) are customers with IDs 1 and 3.
-- Write an SQL query to report the customer 
-- ids from the Customer table that bought all 
-- the products in the Product table.
-- Return the result table in any order.
-- The query result format is in the following example.

select
customer_id
from customer
group by customer_id
having count(distinct (product_key)) = (select count(*) from Product);