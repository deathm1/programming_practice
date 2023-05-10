-- Write an SQL query to report the IDs of all the employees 
-- with missing information. The information of an employee is missing if:

-- The employee's name is missing, or
-- The employee's salary is missing.
-- Return the result table ordered by employee_id in ascending order.

-- The query result format is in the following example.


select 
case when 
E.employee_id is null
then 
S.employee_id
else
E.employee_id
end
as employee_id
from
Employees as E full outer join Salaries as S
on
E.employee_id = S.employee_id
where (E.name is null or E.name = '')  or (S.salary is null or S.salary = 0)
order by employee_id asc;