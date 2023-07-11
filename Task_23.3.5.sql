CREATE VIEW orders_price AS 
SELECT 
  orders.id, 
  SUM(
    positions.amount * products.price
  ) 
FROM 
  orders 
  JOIN positions ON orders.id = positions.order_id 
  JOIN products ON positions.product_id = products.id 
GROUP BY 
  orders.id;
