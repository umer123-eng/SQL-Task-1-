
-- add users in user table 
INSERT INTO users (name, email, password) VALUES
('Umer Mansuri', 'umer@example.com', 'pass123'),
('Ali Khan', 'ali@example.com', 'pass456');

-- add categories 
INSERT INTO categories (name) VALUES
('Electronics'),
('Clothing'),
('Books');

-- add products details
INSERT INTO products (name, description, price, category_id) VALUES
('Laptop', 'Dell i5 Laptop', 55000.00, 1),
('T-Shirt', 'Cotton T-shirt', 500.00, 2),
('Java Book', 'Learn Java Programming', 799.00, 3);

-- add or receive order for the customer
INSERT INTO orders (user_id, status) VALUES
(1, 'Shipped'),
(2, 'Pending');

delete from order_items where quantity='2,2,1'; 


INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1);


INSERT INTO payments (order_id, amount, payment_method) VALUES
(1, 56598.00, 'Credit Card'),
(2, 500.00, 'Cash on Delivery');

-- display the all added rows from diff tables
SELECT * FROM users;
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT * FROM payments;
SELECT * FROM categories;
SELECT * FROM products;

-- delete the some specific id in the table
DELETE FROM order_items WHERE order_id = 1;


