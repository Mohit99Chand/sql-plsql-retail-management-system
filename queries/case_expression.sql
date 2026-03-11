----Day 8: CASE expression with examples

--1. Classify orders by value

SELECT
   order_id,
   total_amount,
   CASE
      WHEN  total_amount >= 30000 THEN 'High Value'
      WHEN  total_amount >= 10000 THEn 'Medium Value'
      ELSE  'Low Value'
   END AS order_category
FROM orders;

#Created a new column based on  conditions.


--2. How many high-value orders exist?
#Example of conditional grouping

SELECT
     CASE
	WHEN total_amount >= 30000 THEN 'High Value'
	ELSE 'Other'
    END AS order_type,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_type;


--3. Combination of CASE + JOIN

SELECT
    c.full_name,
    o.total_amount,
    CASE
        WHEN o.total_amount >= 30000 THEN 'Premium Customer Order'
        ELSE 'Regular Order'
    END AS order_type
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;
