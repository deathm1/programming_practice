-- You have been asked to find the job titles of the 
-- highest-paid employees.

-- Your output should include the highest-paid title or 
-- multiple titles with the same salary.


select
T.worker_title
from
worker as W
inner join 
title as T
on
W.worker_id = T.worker_ref_id
where W.salary in (select max(salary) from worker)
group by T.worker_title;