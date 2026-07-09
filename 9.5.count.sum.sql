CREATE VIEW view_customer_spending AS
SELECT 
	customers.customer_id, 
    customers.customer_name, 
	COUNT(orders.id) AS total_orders, 
    SUM(orders.total_amount) AS total_spent
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.customer_namel;

SELECT * FROM view_customer_spending;