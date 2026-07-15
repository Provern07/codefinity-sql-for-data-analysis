SELECT 
    customers.first_name, 
    customers.last_name,
    sales.quantity
FROM customers
JOIN sales ON customers.customer_id = sales.customer_id
