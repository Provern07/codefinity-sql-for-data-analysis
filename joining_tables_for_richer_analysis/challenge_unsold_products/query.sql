SELECT *
FROM products p
LEFT JOIN sales s
  ON p.product_id = s.product_id
WHERE s.product_id IS NULL;