
-- Write an SQL query to find the employees 
-- who earn more than their managers.

-- Return the result table in any order.

-- The query result format is in the following example.

select 
E1.name as 'Employee' 
from 
Employee as E1
left join 
Employee as E2
on 
E1.managerId = E2.id
where E1.salary > E2.salary;
