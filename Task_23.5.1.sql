SELECT 
  category, 
  AVG(price) 
FROM 
  products 
GROUP BY 
  category;
