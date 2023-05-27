-- Write an SQL query to find employees
-- who have the highest salary in each of the departments.

-- Return the result table in any order.

-- The query result format is in the following example.


select 
mytab.Department,
mytab.Employee,
mytab.Salary
from
(select
D.name as 'Department',
E.name as 'Employee',
E.salary as 'Salary',
dense_rank() over(PARTITION by D.id order by E.salary desc) as 'my_rank'
from
Employee as E
left join 
Department as D
on
E.departmentId = D.id) as mytab where mytab.my_rank = 1;
