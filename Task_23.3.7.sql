SELECT 
  SUM(pos.amount), 
  prod.name 
FROM 
  positions AS pos 
  JOIN orders AS o ON pos.order_id = o.id 
  JOIN products AS prod ON prod.id = pos.product_id 
WHERE 
  o.client_id = 5 
GROUP BY 
  prod.id;
