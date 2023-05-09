-- Write an SQL query to find for each date the number of different products sold and their names.

-- The sold products names for each date should be sorted lexicographically.

-- Return the result table ordered by sell_date.

-- The query result format is in the following example.





--ms sql
SELECT 
sell_date,
COUNT(product) AS num_sold,
STRING_AGG(product, ',') WITHIN GROUP (ORDER BY product) AS products
FROM
(SELECT DISTINCT sell_date, product
FROM Activities) as t
GROUP BY sell_date
ORDER BY sell_date;




-- mysql
SELECT 
sell_date, 
COUNT(DISTINCT product) as 'num_sold',
GROUP_CONCAT(DISTINCT product ORDER BY product) AS 'products'
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;