-- Write an SQL query to report all customers who never order anything.

-- Return the result table in any order.

-- The query result format is in the following example.

select c.Customers 
from Customers as C 
left join 
Orders as O 
on C.id = O.id 
where O.customerId is null;