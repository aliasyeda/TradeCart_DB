-- 1. Create database
CREATE DATABASE online_store;
USE online_store;

-- 2. Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- 3. Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    stock INT
);

-- 4. Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 5. Order Items (many-to-many relation between orders and products)
CREATE TABLE order_items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert into customers
INSERT INTO customers (name, email, phone)
VALUES
('Samia Ali', 'samia@example.com', '1234567890'),
('Arun Mehta', 'arun@example.com', '9876543210');

-- Insert into products
INSERT INTO products (name, description, price, stock)
VALUES
('Laptop', '14-inch, 8GB RAM', 45000.00, 10),
('Mouse', 'Wireless Optical Mouse', 600.00, 50),
('Keyboard', 'Mechanical keyboard', 2000.00, 30);

-- Insert orders
INSERT INTO orders (customer_id, order_date, total_amount)
VALUES
(1, '2025-07-09', 45600.00),
(2, '2025-07-08', 2600.00);

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity, subtotal)
VALUES
(1, 1, 1, 45000.00),
(1, 2, 1, 600.00),
(2, 3, 1, 2000.00),
(2, 2, 1, 600.00);

-- List all customers
SELECT * FROM customers;

-- Show all products
SELECT * FROM products;

-- Show all orders with customer names
SELECT o.order_id, c.name AS customer_name, o.order_date, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Products with stock less than 20
SELECT name, stock FROM products WHERE stock < 20;

-- Total sales made
SELECT SUM(total_amount) AS total_sales FROM orders;


