-- Write an SQL query to report the latest login 
-- for all users in the year 2020. Do not include 
-- the users who did not login in 2020.

-- Return the result table in any order.

-- The query result format is in the following example.


select user_id, max(time_stamp) as 'last_stamp' from Logins where 
year(time_stamp) = 2020 group by user_id;