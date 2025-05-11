
USE Ecom;

-- 1. Total Sales by Product
SELECT 
    p.product_id,
    p.name AS product_name,
    SUM(oi.quantity * oi.price) AS total_revenue,
    SUM(oi.quantity) AS total_units_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
JOIN payments pay ON o.order_id = pay.order_id
WHERE pay.status = 'completed'
GROUP BY p.product_id, p.name
ORDER BY total_revenue DESC;

-- 2. Orders by Customer with Payment Status
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_id,
    o.status AS order_status,
    COALESCE(pay.status, 'unpaid') AS payment_status,
    o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN payments pay ON o.order_id = pay.order_id
ORDER BY c.customer_id, o.order_id;

-- 3. Low Stock Products (Less than 10 units)
SELECT 
    product_id,
    name AS product_name,
    stock_quantity
FROM products
WHERE stock_quantity < 10
ORDER BY stock_quantity ASC;
