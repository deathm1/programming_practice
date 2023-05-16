

-- Write an SQL query to report all the classes that have at least five students.

-- Return the result table in any order.

-- The query result format is in the following example.


select class from Courses group by class having count(student) >= 5;