-- Write an SQL query to find the number of 
-- times each student attended each exam.

-- Return the result table ordered by student_id and subject_name.

-- The query result format is in the following example.

select
S.student_id, 
S.student_name,
SUB.subject_name, 
count(E.subject_name) as 'attended_exams'
from 
Students as S
cross join 
subjects as SUB
left join
Examinations as E
on
S.student_id = E.student_id 
and 
E.subject_name = SUB.subject_name
group by S.student_id, SUB.subject_name, S.student_name;

 