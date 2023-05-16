
-- Write an SQL query to report the name and 
-- bonus amount of each employee with a bonus less than 1000.

-- Return the result table in any order.

-- The query result format is in the following example.

select 
E.name as 'name', 
B.bonus as 'bonus'
from 
Employee as E
left join 
bonus as B
on
E.empId = B.empId
where B.bonus is null or B.bonus < 1000;