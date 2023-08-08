-- Write an SQL query to find the average selling 
-- price for each product. average_price should be rounded to 2 decimal places.

-- Return the result table in any order.

-- The query result format is in the following example.
select 
P.product_id,
round(                                        
  (sum(
    (P.price*1.00)*(US.units*1.00)
  ) * 1.00) / (sum((US.units*1.00)) * 1.00) , 2
) as 'average_price'
from 
Prices as P
inner join 
UnitsSold as US
on
P.product_id = US.product_id 
where 
US.purchase_date >= P.start_date and 
US.purchase_date <= p.end_date 
group by P.product_id;