SELECT 
  client_id, 
  AVG(order_price) AS avg_order_price 
FROM 
  (
    SELECT 
      order_id, 
      SUM(price * amount) AS order_price 
    FROM 
      positions 
      JOIN PRODUCTS ON products.ID = positions.PRODUCT_ID 
    GROUP BY 
      POSITIONS.order_id
  ) AS order_sum 
  JOIN orders ON orders.id = order_sum.order_id 
GROUP BY 
  client_id 
ORDER BY 
  avg_order_price DESC;
