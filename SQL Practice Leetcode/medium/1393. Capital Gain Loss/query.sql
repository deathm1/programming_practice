-- Write an SQL query to report the Capital gain/loss for each stock.

-- The Capital gain/loss of a stock is the total gain or 
-- loss after buying and selling the stock one or many times.

-- Return the result table in any order.

-- The query result format is in the following example.



SELECT stock_name,
SUM(
  Case
  When operation='Buy' then -price
	When operation='Sell' then price
  End
) 
As capital_gain_loss
FROM Stocks
Group By stock_name