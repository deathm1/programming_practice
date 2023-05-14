-- Write an SQL query to report the 
-- name and balance of users with a balance 
-- higher than 10000. The balance of an account 
-- is equal to the sum of the amounts of all 
-- transactions involving that account.

-- Return the result table in any order.

-- The query result format is in the following example.



select 
U.name,
sum(T.amount) as 'balance'
from
Transactions as T
inner join
Users as U
on
T.account = U.account
group by T.account, U.name
having sum(T.amount) > 10000;