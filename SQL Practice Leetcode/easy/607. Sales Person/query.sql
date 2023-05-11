
-- Write an SQL query to report the names of all the salespersons 
-- who did not have any orders related to the company with the name "RED".

-- Return the result table in any order.

-- The query result format is in the following example.

select s.name
from salesPerson as s
where s.sales_id not in
(select o.sales_id from orders as o left join company as c on o.com_id=c.com_id where name='RED')