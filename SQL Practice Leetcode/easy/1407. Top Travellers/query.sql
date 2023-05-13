-- Write an SQL query to report 
-- the distance traveled by each user.

-- Return the result table ordered by 
-- travelled_distance in descending order, 
-- if two or more users traveled the same distance, 
-- order them by their name in ascending order.

-- The query result format is in the following example.

select 
U.name as 'name', 
sum(
  case when R.distance is not null 
  then R.distance 
  else 0 
  end
) as 'travelled_distance'
from Users as U left join Rides as R
on
U.id = R.user_id  
group by U.name, U.id
order by travelled_distance desc, name asc;
