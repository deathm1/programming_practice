-- There is a factory website that has several 
-- machines each running the same number of processes. 
-- Write an SQL query to find the average time each 
-- machine takes to complete a process.
-- The time to complete a process is the 'end' 
-- timestamp minus the 'start' timestamp. 
-- The average time is calculated by the total 
-- time to complete every process on the machine 
-- divided by the number of processes that were run.
-- The resulting table should have the machine_id along 
-- with the average time as processing_time, 
-- which should be rounded to 3 decimal places.
-- Return the result table in any order.
-- The query result format is in the following example

select
A1.machine_id,
round(avg(A2.timestamp - A1.timestamp), 3) as processing_time
from
Activity as A1, Activity as A2
where
A1.machine_id = A2.machine_id AND
A1.process_id = A2.process_id AND
A1.activity_type = 'start' AND 
A2.activity_type = 'end'
GROUP BY A1.machine_id order by A1.machine_id asc;