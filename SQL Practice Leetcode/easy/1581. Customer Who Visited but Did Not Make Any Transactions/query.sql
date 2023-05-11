
-- Write a SQL query to find the IDs of the users who visited 
-- without making any transactions and the number of times they made these types of visits.

-- Return the result table sorted in any order.

-- The query result format is in the following example.

 

select V.customer_id, count(t.amount) as 'count_no_trans' from Visits as V
left join Transactions as T
on
V.visit_id = T.visit_id WHERE t.amount is null group by V.customer_id order by count_no_trans desc;