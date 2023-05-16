
-- Write an SQL query that reports 
-- the average experience years of all the employees 
-- for each project, rounded to 2 digits.

-- Return the result table in any order.

-- The query result format is in the following example.


select
P.project_id,
round(avg(experience_years*1.00), 2) as 'average_years'
from
Project as P
inner join 
Employee as E
on
P.employee_id = E.employee_id
group by P.project_id