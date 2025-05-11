
USE Ecom;

-- Insert dummy customers
INSERT INTO customers (first_name, last_name, email, phone_number) VALUES
('First1', 'Last1', 'user1@example.com', '555-0101'),
('First2', 'Last2', 'user2@example.com', '555-0102'),
('First3', 'Last3', 'user3@example.com', '555-0103'),
('First4', 'Last4', 'user4@example.com', '555-0104'),
('First5', 'Last5', 'user5@example.com', '555-0105'),
('First6', 'Last6', 'user6@example.com', '555-0106'),
('First7', 'Last7', 'user7@example.com', '555-0107'),
('First8', 'Last8', 'user8@example.com', '555-0108'),
('First9', 'Last9', 'user9@example.com', '555-0109'),
('First10', 'Last10', 'user10@example.com', '555-0110'),
('First11', 'Last11', 'user11@example.com', '555-0111'),
('First12', 'Last12', 'user12@example.com', '555-0112'),
('First13', 'Last13', 'user13@example.com', '555-0113'),
('First14', 'Last14', 'user14@example.com', '555-0114'),
('First15', 'Last15', 'user15@example.com', '555-0115'),
('First16', 'Last16', 'user16@example.com', '555-0116'),
('First17', 'Last17', 'user17@example.com', '555-0117'),
('First18', 'Last18', 'user18@example.com', '555-0118'),
('First19', 'Last19', 'user19@example.com', '555-0119'),
('First20', 'Last20', 'user20@example.com', '555-0120');

-- Insert dummy users
INSERT INTO users (username, password_hash) VALUES
('user1', 'hashed_password_1'),
('user2', 'hashed_password_2'),
('user3', 'hashed_password_3'),
('user4', 'hashed_password_4'),
('user5', 'hashed_password_5'),
('user6', 'hashed_password_6'),
('user7', 'hashed_password_7'),
('user8', 'hashed_password_8'),
('user9', 'hashed_password_9'),
('user10', 'hashed_password_10'),
('user11', 'hashed_password_11'),
('user12', 'hashed_password_12'),
('user13', 'hashed_password_13'),
('user14', 'hashed_password_14'),
('user15', 'hashed_password_15'),
('user16', 'hashed_password_16'),
('user17', 'hashed_password_17'),
('user18', 'hashed_password_18'),
('user19', 'hashed_password_19'),
('user20', 'hashed_password_20');

-- Insert dummy item categories
INSERT INTO item_categories (name, description) VALUES
('Category1', 'Description for Category1'),
('Category2', 'Description for Category2'),
('Category3', 'Description for Category3'),
('Category4', 'Description for Category4'),
('Category5', 'Description for Category5'),
('Category6', 'Description for Category6'),
('Category7', 'Description for Category7'),
('Category8', 'Description for Category8'),
('Category9', 'Description for Category9'),
('Category10', 'Description for Category10'),
('Category11', 'Description for Category11'),
('Category12', 'Description for Category12'),
('Category13', 'Description for Category13'),
('Category14', 'Description for Category14'),
('Category15', 'Description for Category15'),
('Category16', 'Description for Category16'),
('Category17', 'Description for Category17'),
('Category18', 'Description for Category18'),
('Category19', 'Description for Category19'),
('Category20', 'Description for Category20');

-- Insert dummy products (with category_id)

-- Insert dummy products (updated to use category_id)
INSERT INTO products (name, description, price, stock_quantity, category_id) VALUES
('Product1', 'Description for product 1', 136.11, 99, 2),
('Product2', 'Description for product 2', 308.89, 94, 3),
('Product3', 'Description for product 3', 947.98, 38, 4),
('Product4', 'Description for product 4', 171.6, 92, 5),
('Product5', 'Description for product 5', 160.95, 46, 6),
('Product6', 'Description for product 6', 607.11, 66, 7),
('Product7', 'Description for product 7', 438.59, 89, 8),
('Product8', 'Description for product 8', 849.17, 91, 9),
('Product9', 'Description for product 9', 864.13, 97, 10),
('Product10', 'Description for product 10', 503.02, 89, 11),
('Product11', 'Description for product 11', 821.87, 30, 12),
('Product12', 'Description for product 12', 472.26, 42, 13),
('Product13', 'Description for product 13', 929.11, 24, 14),
('Product14', 'Description for product 14', 971.23, 36, 15),
('Product15', 'Description for product 15', 977.61, 20, 16),
('Product16', 'Description for product 16', 393.9, 23, 17),
('Product17', 'Description for product 17', 598.96, 22, 18),
('Product18', 'Description for product 18', 167.54, 92, 19),
('Product19', 'Description for product 19', 288.31, 19, 20),
('Product20', 'Description for product 20', 257.23, 17, 1);


-- Insert dummy addresses
INSERT INTO addresses (customer_id, street, city, state, zip_code, country) VALUES
(1, 'Street 1', 'City1', 'State1', '10001', 'Country1'),
(2, 'Street 2', 'City2', 'State2', '10002', 'Country2'),
(3, 'Street 3', 'City3', 'State3', '10003', 'Country3'),
(4, 'Street 4', 'City4', 'State4', '10004', 'Country4'),
(5, 'Street 5', 'City5', 'State5', '10005', 'Country5'),
(6, 'Street 6', 'City6', 'State6', '10006', 'Country6'),
(7, 'Street 7', 'City7', 'State7', '10007', 'Country7'),
(8, 'Street 8', 'City8', 'State8', '10008', 'Country8'),
(9, 'Street 9', 'City9', 'State9', '10009', 'Country9'),
(10, 'Street 10', 'City10', 'State10', '10010', 'Country10'),
(11, 'Street 11', 'City11', 'State11', '10011', 'Country11'),
(12, 'Street 12', 'City12', 'State12', '10012', 'Country12'),
(13, 'Street 13', 'City13', 'State13', '10013', 'Country13'),
(14, 'Street 14', 'City14', 'State14', '10014', 'Country14'),
(15, 'Street 15', 'City15', 'State15', '10015', 'Country15'),
(16, 'Street 16', 'City16', 'State16', '10016', 'Country16'),
(17, 'Street 17', 'City17', 'State17', '10017', 'Country17'),
(18, 'Street 18', 'City18', 'State18', '10018', 'Country18'),
(19, 'Street 19', 'City19', 'State19', '10019', 'Country19'),
(20, 'Street 20', 'City20', 'State20', '10020', 'Country20');

-- Insert dummy orders
INSERT INTO orders (customer_id, status, total_amount) VALUES
(2, 'pending', 181.02),
(3, 'pending', 124.22),
(4, 'pending', 126.55),
(5, 'pending', 456.99),
(6, 'pending', 352.01),
(7, 'pending', 250.23),
(8, 'pending', 183.89),
(9, 'pending', 104.43),
(10, 'pending', 151.22),
(11, 'pending', 320.28),
(12, 'pending', 334.49),
(13, 'pending', 126.42),
(14, 'pending', 196.13),
(15, 'pending', 457.77),
(16, 'pending', 293.04),
(17, 'pending', 288.07),
(18, 'pending', 354.67),
(19, 'pending', 414.57),
(20, 'pending', 127.89),
(1, 'pending', 399.85);

-- Insert dummy order items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(2, 2, 3, 72.39),
(3, 3, 5, 177.58),
(4, 4, 4, 395.7),
(5, 5, 1, 438.89),
(6, 6, 5, 78.15),
(7, 7, 4, 38.1),
(8, 8, 5, 86.68),
(9, 9, 3, 497.1),
(10, 10, 5, 190.92),
(11, 11, 2, 255.87),
(12, 12, 3, 45.26),
(13, 13, 4, 489.32),
(14, 14, 4, 100.35),
(15, 15, 1, 433.1),
(16, 16, 5, 29.78),
(17, 17, 2, 233.27),
(18, 18, 1, 88.08),
(19, 19, 1, 181.09),
(20, 20, 2, 78.78),
(1, 1, 4, 203.53);

-- Insert dummy payments
INSERT INTO payments (order_id, payment_method, amount, status) VALUES
(2, 'credit_card', 314.63, 'refunded'),
(3, 'paypal', 253.57, 'failed'),
(4, 'cash_on_delivery', 480.45, 'pending'),
(5, 'credit_card', 226.71, 'failed'),
(6, 'paypal', 442.42, 'failed'),
(7, 'bank_transfer', 79.95, 'pending'),
(8, 'credit_card', 54.81, 'failed'),
(9, 'paypal', 42.71, 'failed'),
(10, 'paypal', 477.23, 'failed'),
(11, 'bank_transfer', 374.06, 'failed'),
(12, 'paypal', 52.68, 'pending'),
(13, 'cash_on_delivery', 484.03, 'pending'),
(14, 'credit_card', 336.24, 'failed'),
(15, 'bank_transfer', 433.47, 'refunded'),
(16, 'paypal', 160.16, 'pending'),
(17, 'paypal', 286.97, 'completed'),
(18, 'credit_card', 288.02, 'completed'),
(19, 'cash_on_delivery', 36.16, 'refunded'),
(20, 'cash_on_delivery', 52.47, 'pending'),
(1, 'cash_on_delivery', 327.34, 'completed');
