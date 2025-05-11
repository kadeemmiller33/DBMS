
USE Ecom;

-- Create a basic stored procedure to place an order
DELIMITER $$
CREATE PROCEDURE PlaceOrderBasic(
    IN p_customer_id INT,
    IN p_product_id INT,
    IN p_quantity INT,
    IN p_price DECIMAL(10,2)
)
BEGIN
    DECLARE new_order_id INT;

    -- Insert new order
    INSERT INTO orders (customer_id, status, total_amount)
    VALUES (p_customer_id, 'pending', p_quantity * p_price);

    -- Get the new order id
    SET new_order_id = LAST_INSERT_ID();

    -- Add order item
    INSERT INTO order_items (order_id, product_id, quantity, price)
    VALUES (new_order_id, p_product_id, p_quantity, p_price);
    
END $$
DELIMITER ;

-- Create a basic view for order summary
CREATE OR REPLACE VIEW BasicOrderSummary AS
SELECT 
    o.order_id,
    o.customer_id,
    o.status AS order_status,
    o.total_amount,
    pr.name AS product_name,
    oi.quantity,
    oi.price
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products pr ON oi.product_id = pr.product_id;
