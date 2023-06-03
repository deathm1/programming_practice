-- Input: 
-- Employee table:
-- +-----+-------+------------+-----------+
-- | id  | name  | department | managerId |
-- +-----+-------+------------+-----------+
-- | 101 | John  | A          | None      |
-- | 102 | Dan   | A          | 101       |
-- | 103 | James | A          | 101       |
-- | 104 | Amy   | A          | 101       |
-- | 105 | Anne  | A          | 101       |
-- | 106 | Ron   | B          | 101       |
-- +-----+-------+------------+-----------+
-- Output: 
-- +------+
-- | name |
-- +------+
-- | John |
-- +------+
-- Write an SQL query to report the managers with at least five direct reports.

-- Return the result table in any order.

-- The query result format is in the following example.


select name from Employee where id in
(select 
managerId
from
Employee where managerId is not null
group by managerId having count(name) >= 5);