
-- Write an SQL query to report all the duplicate 
-- emails. Note that it's guaranteed that the email field is not NULL.

-- Return the result table in any order.

-- The query result format is in the following example.

select email 
from Person 
group by email 
having count(email) >1;