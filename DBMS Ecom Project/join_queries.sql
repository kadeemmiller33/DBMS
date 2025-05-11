
USE Ecom;

-- 1. Get all customer orders with customer details
SELECT 
    o.order_id,
    o.order_date,
    o.total_amount,
    c.first_name,
    c.last_name,
    c.email
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- 2. List all order items with product details
SELECT 
    oi.order_item_id,
    o.order_id,
    p.name AS product_name,
    oi.quantity,
    oi.price
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN products p ON oi.product_id = p.product_id;

-- 3. List products with their category names
SELECT 
    p.product_id,
    p.name AS product_name,
    ic.name AS category_name
FROM products p
LEFT JOIN item_categories ic ON p.category_id = ic.category_id;

-- 4. Show payments with order and customer information
SELECT 
    pay.payment_id,
    o.order_id,
    c.first_name,
    c.last_name,
    pay.payment_date,
    pay.amount,
    pay.payment_method,
    pay.status AS payment_status
FROM payments pay
JOIN orders o ON pay.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id;

-- 5. Get customer addresses
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    a.street,
    a.city,
    a.state,
    a.zip_code,
    a.country
FROM customers c
JOIN addresses a ON c.customer_id = a.customer_id;

-- 6. Multi-table order summary with customer, product, and payment details
SELECT 
    o.order_id,
    c.first_name,
    c.last_name,
    p.name AS product_name,
    oi.quantity,
    oi.price,
    pay.amount AS payment_amount,
    pay.status AS payment_status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
LEFT JOIN payments pay ON o.order_id = pay.order_id;
