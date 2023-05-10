--  reference
-- https://stackoverflow.com/questions/5700911/how-do-i-check-if-an-integer-is-even-or-odd-using-bitwise-operators/5700927#5700927
-- logic
-- if (number & 1) {
--   // It's odd 
-- }
select employee_id,
(
  case when
  ~employee_id & 1 -- first take negate the employee_id and then perform and operator with 1
  then 0
  else (
    case when
    lower(name) not like 'm%'
    then salary
    else 0
    end
  ) 
  end
) as 'bonus'
from Employees order by employee_id asc;