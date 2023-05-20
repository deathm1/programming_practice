-- For this problem, 
-- we will consider a manager an employee who has 
-- at least 1 other employee reporting to them.
-- Write an SQL query to report the ids and the 
-- names of all managers, the number of employees 
-- who report directly to them, and the average age 
-- of the reports rounded to the nearest integer.
-- Return the result table ordered by employee_id.
-- The query result format is in the following example.

select 
E2.employee_id,
E2.name,
count(E1.employee_id) as 'reports_count',
round(avg(E1.age*1.0),0) as 'average_age'
from
Employees as E1, Employees as E2
where
E1.reports_to = E2.employee_id
group by E2.employee_id, E2.name order by E2.employee_id asc;