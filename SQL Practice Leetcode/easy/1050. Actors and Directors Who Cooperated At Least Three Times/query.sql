-- Write a SQL query for a report that provides 
-- the pairs (actor_id, director_id) where the actor 
-- has cooperated with the director at least three times.

-- Return the result table in any order.

-- The query result format is in the following example.


select 
actor_id, director_id 
from ActorDirector 
group by actor_id, director_id 
having count(director_id)>=3;