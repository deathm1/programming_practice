
-- Write an SQL query to find the daily active user count 
-- for a period of 30 days ending 2019-07-27 inclusively. 
-- A user was active on someday if they made at least one 
-- activity on that day.

-- Return the result table in any order.

-- The query result format is in the following example.

select activity_date as 'day', count(distinct user_id) as 'active_users'  from Activity 
where activity_date <= '2019-07-27' AND activity_date > '2019-06-27' 
AND activity_date <= '2019-07-27'  group by activity_date;