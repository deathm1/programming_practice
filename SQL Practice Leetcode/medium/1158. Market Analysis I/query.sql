-- Write an SQL query to find for each user, 
-- the join date and the number of orders they made as a buyer in 2019.

-- Return the result table in any order.

-- The query result format is in the following example.


-- we DONT have to use where clause.

-- https://mode.com/sql-tutorial/sql-joins-where-vs-on/


Select 
U.user_id as buyer_id,
U.join_date, 
SUM(CASE WHEN order_date is not null then 1 ELSE 0 END) as orders_in_2019 from 
Users U
left join 
Orders O 
on U.user_id = O.buyer_id and YEAR(order_date) = '2019'
group by U.user_id, U.join_date