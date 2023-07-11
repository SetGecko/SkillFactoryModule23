SELECT 
  date 
FROM 
  orders 
WHERE 
  id IN (
    SELECT 
      order_id 
    FROM 
      orders_for_kazan
  );
