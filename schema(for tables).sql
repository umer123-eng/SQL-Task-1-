
-- Create users table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY, -- use for unique id for each user
    name VARCHAR(100), -- user
    email VARCHAR(100) UNIQUE, -- user email-id
    password VARCHAR(100), -- of them unique password
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

alter table users add(phoneNo  numeric(10));
desc users; -- display the table 

-- Create categories table
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,  -- use for unique id for each user
    name VARCHAR(100) 
);

desc categories; 

-- Create products table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY, -- use for unique id for each user 
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id) -- as a use for reference
);

desc products;

-- Create order table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

desc orders;

CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

desc order_items;

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    amount DECIMAL(10, 2),
    payment_method VARCHAR(50),
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

desc payments;