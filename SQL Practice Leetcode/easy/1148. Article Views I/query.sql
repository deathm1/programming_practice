-- Write an SQL query to find all the authors that viewed at least one of their own articles.

-- Return the result table sorted by id in ascending order.

-- The query result format is in the following example.


select distinct(author_id) as 'id' 
from Views 
where author_id = viewer_id 
order by id asc;