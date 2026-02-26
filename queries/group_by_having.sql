-- Day 5: GROUP BY and HAVING

-- Orders per customer
SELECT customer_id, COUNT(order_id)
FROM orders
GROUP BY customer_id;

-- Orders per customer with names
SELECT c.full_name, COUNT(o.order_id)
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.full_name;

-- Revenue per customer
SELECT c.full_name, SUM(o.total_amount)
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.full_name;

-- Customers spending above threshold
SELECT c.full_name, SUM(o.total_amount)
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.full_name
HAVING SUM(o.total_amount) > 20000;
