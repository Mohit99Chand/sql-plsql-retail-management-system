-- Day 3: Joins

-- INNER JOIN (Show customer name with their orders)
SELECT c.full_name, o.order_id, o.total_amount, o.order_date
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- LEFT JOIN (Show all customers,even if they have no orders)
SELECT c.full_name, o.order_id, o.total_amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- Find customers who have NOT placed any orders
SELECT c.full_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
