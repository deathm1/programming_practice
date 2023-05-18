-- Write an SQL query to get the names of 
-- products that have at least 100 units ordered in 
-- February 2020 and their amount.

-- Return result table in any order.

-- The query result format is in the following example.


select 
P.product_name,
sum(O.unit) as 'unit'
from 
Orders as O
left join
Products as P
on
O.product_id = P.product_id
where 
O.order_date >= '2020-02-01' and O.order_date <= '2020-02-29'
group by P.product_name 
having sum(O.unit) >= 100 
order by unit desc;