-- Write an SQL query to find all numbers 
-- that appear at least three times consecutively.

-- Return the result table in any order.

-- The query result format is in the following example.

with cte as (
    select num,
    lead(num,1) over(order by id asc) as 'num1',
    lead(num,2) over(order by id asc) as 'num2'
    from logs
)
select distinct num as 'ConsecutiveNums' from cte where (num=num1) and (num=num2); 