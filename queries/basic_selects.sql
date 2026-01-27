-- Day 2: Basic SELECT Queries

-- 1. View all customers
SELECT * FROM customers;

-- 2. View specific columns
SELECT full_name, city FROM customers;

-- 3. Customers from Delhi
SELECT * FROM customers
WHERE city = 'Delhi';

-- 4. Customers from Delhi or Mumbai
SELECT * FROM customers
WHERE city IN ('Delhi', 'Mumbai');

-- 5. View all products
SELECT * FROM products;

-- 6. Electronics products above 30000
SELECT * FROM products
WHERE category = 'Electronics' AND price > 30000;

-- 7. Products ordered by price (high to low)
SELECT * FROM products
ORDER BY price DESC;

-- 8. Top 2 expensive products
SELECT * FROM products
ORDER BY price DESC
LIMIT 2;

-- 9. Cheapest product
SELECT * FROM products
ORDER BY price ASC
LIMIT 1;
