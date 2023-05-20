-- Write an SQL query to report the 
-- IDs of the employees whose salary 
-- is strictly less than $30000 and 
-- whose manager left the company. 
-- When a manager leaves the company, 
-- their information is deleted from the Employees table, 
-- but the reports still have their manager_id set to the 
-- manager that left.
-- Return the result table ordered by employee_id.
-- The query result format is in the following example.


select
E1.employee_id
from
Employees as E1
left join
Employees as E2
on
E1.manager_id = E2.employee_id
where 
E1.manager_id is not null and 
E2.employee_id is null and 
E1.salary < 30000
order by E1.employee_id asc;