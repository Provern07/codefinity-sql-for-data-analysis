SELECT customers.customer_id, customers.first_name, customers.last_name,
    SUM(sales.quantity) AS total_quantity
FROM customers
JOIN sales ON customers.customer_id = sales.customer_id
GROUP BY customers.customer_id, customers.first_name, customers.last_name
HAVING 
    SUM(sales.quantity) > (
    SELECT AVG(customer_total)
    FROM (SELECT SUM(quantity) AS customer_total
    FROM sales
    GROUP BY customer_id)
    AS customer_totals);


