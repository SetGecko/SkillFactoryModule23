SELECT 
  name, 
  amount, 
  order_id 
FROM 
  products 
  JOIN positions ON products.id = positions.product_id 
WHERE 
  positions.order_id IN (
    SELECT 
      id 
    FROM 
      orders 
    WHERE 
      address = 'Казань' 
      AND status = 'in progress'
  );
