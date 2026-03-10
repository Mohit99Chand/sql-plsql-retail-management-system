-- Day 7: CTE Examples

----1. Find customers whose total spending is above average spending.
WITH customer_totals AS (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)

SELECT *
FROM customer_totals
WHERE total_spent > (
    SELECT AVG(total_amount) FROM orders
);

---- 2. Find customers whose total spending is above average customer spending. (Multiple CTE example)
WITH customer_totals AS (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent
    FROM orders
    GROUP BY customer_id
),
average_spending AS (
    SELECT AVG(total_spent) AS avg_spent
    FROM customer_totals
)

SELECT *
FROM customer_totals
WHERE total_spent > (SELECT avg_spent FROM average_spending);
