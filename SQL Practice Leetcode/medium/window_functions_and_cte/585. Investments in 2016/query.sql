-- Write an SQL query to report the sum of 
-- all total investment values in 2016 
-- tiv_2016, for all policyholders who:

-- have the same tiv_2015 value as one or 
-- more other policyholders, and
-- are not located in the same city like 
-- any other policyholder (i.e., the (lat, lon) 
-- attribute pairs must be unique).
-- Round tiv_2016 to two decimal places.

-- The query result format is in the following example.


SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM
(select 
*,
COUNT(*) OVER(PARTITION BY tiv_2015) AS CNT1,
COUNT(*) OVER(PARTITION BY lat, lon) AS CNT2
from 
INSURANCE) as TBL where CNT1 >= 2 AND CNT2 = 1;