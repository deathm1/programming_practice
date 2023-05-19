-- Write an SQL query to find the users who have valid emails.

-- A valid e-mail has a prefix name and a domain where:

-- The prefix name is a string that may 
-- contain letters (upper or lower case), digits, 
-- underscore '_', period '.', and/or dash '-'. 
-- The prefix name must start with a letter.
-- The domain is '@leetcode.com'.
-- Return the result table in any order.

-- The query result format is in the following example.

select 
* 
from Users 
where 
right(mail, 13) like "@leetcode.com" 
and 
left(mail, length(mail)-13) rlike '^[A-Za-z][A-Za-z0-9._-]*$';