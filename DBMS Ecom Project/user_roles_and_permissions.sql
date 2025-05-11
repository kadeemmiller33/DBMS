
-- Create Roles
CREATE ROLE 'admin';
CREATE ROLE 'manager';
CREATE ROLE 'clerk';
CREATE ROLE 'customer';

-- Grant Permissions to Admin (Full Access)
GRANT ALL PRIVILEGES ON Ecom.* TO 'admin';

-- Grant Permissions to Manager
GRANT SELECT, INSERT, UPDATE, DELETE ON Ecom.products TO 'manager';
GRANT SELECT, INSERT, UPDATE, DELETE ON Ecom.orders TO 'manager';
GRANT SELECT ON Ecom.payments TO 'manager';

-- Grant Permissions to Clerk
GRANT SELECT, INSERT, UPDATE ON Ecom.orders TO 'clerk';
GRANT SELECT ON Ecom.products TO 'clerk';

-- Grant Permissions to Customer
GRANT SELECT, INSERT ON Ecom.orders TO 'customer';
GRANT SELECT ON Ecom.products TO 'customer';

-- Assign Roles to Specific Users (replace usernames as needed)
GRANT 'admin' TO 'admin_user'@'localhost';
GRANT 'manager' TO 'manager_user'@'localhost';
GRANT 'clerk' TO 'clerk_user'@'localhost';
GRANT 'customer' TO 'customer_user'@'localhost';

-- Set Default Roles
SET DEFAULT ROLE 'admin' TO 'admin_user'@'localhost';
SET DEFAULT ROLE 'manager' TO 'manager_user'@'localhost';
SET DEFAULT ROLE 'clerk' TO 'clerk_user'@'localhost';
SET DEFAULT ROLE 'customer' TO 'customer_user'@'localhost';
