
-- Write an SQL query to find the percentage 
-- of the users registered in each contest rounded to two decimals.

-- Return the result table ordered by percentage 
-- in descending order. In case of a tie, order it 
-- by contest_id in ascending order.

-- The query result format is in the following example.

select
REG.contest_id,
round(
    (
        (
            count(distinct REG.user_id)*1.00
        )
        /
        (
            ((select count(distinct user_id) from Users))*1.00
        )
    )*100, 2
) as 'percentage'
from
Register as REG
inner join
Users as USR
on
REG.user_id = USR.user_id
group by REG.contest_id order by percentage desc, 
REG.contest_id asc;