-- Day 6: Window Functions

-- Total spent per customer
SELECT 
    customer_id,
    order_id,
    total_amount,
    SUM(total_amount) OVER (PARTITION BY customer_id) AS total_spent
FROM orders;

-- Row number per customer
SELECT 
    customer_id,
    order_id,
    total_amount,
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS rank_number
FROM orders;

-- Rank per customer
SELECT 
    customer_id,
    total_amount,
    RANK() OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS rank_value
FROM orders;
