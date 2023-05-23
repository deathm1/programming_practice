-- Write an SQL query to report the nth 
-- highest salary from the Employee table. 
-- If there is no nth highest salary, 
-- the query should report null.

-- The query result format is in the following example.



CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
SET @N = @N - 1;
    RETURN (
        select 
        distinct salary 
        from 
        Employee 
        order by salary desc 
        OFFSET @N ROWS 
        FETCH NEXT 1 ROWS ONLY
    );
END