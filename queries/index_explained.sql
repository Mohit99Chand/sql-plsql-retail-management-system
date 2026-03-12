-- Day 9: Index Examples

--1. Check existing indexes
\d customers

--2. Create index on orders table
CREATE INDEX idx_orders_customer_id
ON orders(customer_id);

--3. Multi-column index example
CREATE INDEX idx_orders_customer_amount
ON orders(customer_id, total_amount);
