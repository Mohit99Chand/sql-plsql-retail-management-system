-- DAY 4: Subqueries

--Products above average price
SELECT * FROM products
WHERE price > (SELECT AVG(price) FROM products);

--Orders above average amount
SELECT * FROM orders 
WHERE total_amount > (SELECT AVG(total_amount) FROM orders);

--Customers who placed orders
SELECT * FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders);

--Correlated subquery: total spent per customer
SELECT c.full_name,
(SELECT SUM(o.total_amount) FROM orders o
 WHERE  o.customer_id = c.customer_id
) AS tottal_spent
FROM  customers c; 
