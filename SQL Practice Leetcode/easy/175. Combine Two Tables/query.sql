-- Write an SQL query to report the first name, last name, 
-- city, and state of each person in the Person table. 
-- If the address of a personId is not present in the Address table, report null instead.

-- Return the result table in any order.

-- The query result format is in the following example.

select 
P.firstName,
P.lastName,
A.city,
A.state
from 
Person as p
left join 
Address as A
on
P.personId = A.personId;
