-- Write an SQL query to fix the names so that only the 
-- first character is uppercase and the rest are lowercase.

-- Return the result table ordered by user_id.

-- The query result format is in the following example.

-- Extract 3 characters from a string (starting from left):
-- SELECT LEFT('SQL Tutorial', 3) AS ExtractString;

select user_id, (
  CONCAT(
  UPPER(LEFT(name, 1)),
  LOWER(RIGHT(name, LEN(name) - 1)))
  ) as 'name' from Users order by user_id asc;