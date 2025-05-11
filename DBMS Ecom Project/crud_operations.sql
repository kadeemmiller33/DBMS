
USE Ecom;

-- ========================
-- CUSTOMERS CRUD EXAMPLES
-- ========================

-- CREATE
INSERT INTO customers (first_name, last_name, email, phone_number)
VALUES ('Alice', 'Wonderland', 'alice@example.com', '555-1234');

-- READ
SELECT * FROM customers;
SELECT * FROM customers WHERE customer_id = 1;

-- UPDATE
UPDATE customers SET phone_number = '555-9999' WHERE customer_id = 1;
SELECT ROW_COUNT();

-- DELETE (Safe Delete with LIMIT)
DELETE FROM customers WHERE customer_id = 21 LIMIT 1;
SELECT ROW_COUNT();


-- ====================
-- PRODUCTS CRUD EXAMPLES
-- ====================

-- CREATE (Using category_id = 1, assumed to be 'Electronics')
INSERT INTO products (name, description, price, stock_quantity, category_id)
VALUES ('Tablet', '10-inch display tablet', 299.99, 20, 1);

-- READ
SELECT * FROM products;
SELECT * FROM products WHERE product_id = 1;

-- UPDATE (Decrease stock safely)
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_id = 1;
SELECT ROW_COUNT();

-- DELETE (Safe Delete with LIMIT)
DELETE FROM products WHERE product_id = 4 LIMIT 1;
SELECT ROW_COUNT();


-- ====================
-- ORDERS CRUD EXAMPLES
-- ====================

-- CREATE
INSERT INTO orders (customer_id, status, total_amount)
VALUES (1, 'pending', 150.00);

-- READ
SELECT * FROM orders;
SELECT * FROM orders WHERE order_id = 1;

-- UPDATE (Mark as shipped)
UPDATE orders SET status = 'shipped' WHERE order_id = 1;
SELECT ROW_COUNT();

-- DELETE (Safe Delete with LIMIT)
DELETE FROM orders WHERE order_id = 3 LIMIT 1;
SELECT ROW_COUNT();


-- ====================
-- PAYMENTS CRUD EXAMPLES
-- ====================

-- CREATE
INSERT INTO payments (order_id, payment_method, amount, status)
VALUES (1, 'paypal', 150.00, 'pending');

-- READ
SELECT * FROM payments;
SELECT * FROM payments WHERE payment_id = 1;

-- UPDATE (Mark as completed)
UPDATE payments SET status = 'completed' WHERE payment_id = 1;
SELECT ROW_COUNT();

-- DELETE (Safe Delete with LIMIT)
DELETE FROM payments WHERE payment_id = 3 LIMIT 1;
SELECT ROW_COUNT();
