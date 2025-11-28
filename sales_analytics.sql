CREATE DATABASE sales_analytics;
USE sales_analytics;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    gender VARCHAR(10),
    age INT
);

CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


INSERT INTO products (product_name, category, price) VALUES
('Xiaomi Mi Band 7', 'Accessories', 90),
('Dell XPS 13', 'Electronics', 2100),
('Nintendo Switch', 'Gaming', 650),
('HP Printer', 'Office', 300),
('Google Pixel 8', 'Electronics', 1500),
('JBL Speaker', 'Audio', 220),
('Lenovo Tablet', 'Electronics', 800),
('Canon Camera', 'Photography', 1250);

INSERT INTO customers (customer_name, city, gender, age) VALUES
('Sevinc', 'Baku', 'Female', 29),
('Orxan', 'Ganja', 'Male', 22),
('Aysel', 'Sumqayit', 'Female', 34),
('Kenan', 'Baku', 'Male', 25),
('Tural', 'Shaki', 'Male', 40),
('Nazli', 'Lankaran', 'Female', 19),
('Eldar', 'Guba', 'Male', 33),
('Nigar', 'Baku', 'Female', 21);

INSERT INTO sales (product_id, customer_id, quantity, sale_date) VALUES
(7, 6, 1, '2025-02-01'),
(4, 7, 1, '2025-02-02'),
(3, 8, 3, '2025-02-02'),
(1, 9, 1, '2025-02-03'),
(5, 10, 2, '2025-02-03'),
(2, 11, 1, '2025-02-04'),
(9, 12, 2, '2025-02-05'),
(3, 13, 1, '2025-02-05'),
(10, 14, 1, '2025-02-06'),
(12, 15, 1, '2025-02-06'),
(6, 16, 1, '2025-02-07'),
(4, 17, 1, '2025-02-07'),
(11, 18, 2, '2025-02-08'),
(14, 19, 1, '2025-02-08'),
(8, 20, 1, '2025-02-09'),
(1, 21, 1, '2025-02-09'),
(13, 22, 1, '2025-02-10'),
(9, 23, 1, '2025-02-10'),
(10, 24, 1, '2025-02-11'),
(6, 25, 1, '2025-02-11'),
(4, 26, 2, '2025-02-12'),
(7, 27, 1, '2025-02-12'),
(9, 28, 3, '2025-02-13'),
(12, 29, 1, '2025-02-13'),
(8, 30, 2, '2025-02-14'),
(11, 31, 2, '2025-02-14'),
(3, 32, 1, '2025-02-15'),
(10, 33, 1, '2025-02-15'),
(5, 34, 2, '2025-02-16'),
(14, 35, 1, '2025-02-16'),
(2, 36, 1, '2025-02-17'),
(1, 37, 1, '2025-02-17'),
(7, 38, 1, '2025-02-18'),
(9, 39, 1, '2025-02-18');

SELECT p.product_name, SUM(s.quantity * p.price) AS revenue
FROM sales s JOIN products p USING(product_id)
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;

SELECT c.city, SUM(quantity * price) AS total_spending
FROM sales
JOIN customers c USING(customer_id)
JOIN products USING(product_id)
GROUP BY c.city
ORDER BY total_spending DESC;


SELECT gender, SUM(quantity*price) AS spending
FROM sales
JOIN customers USING(customer_id)
JOIN products USING(product_id)
GROUP BY gender;

SELECT category, COUNT(*) AS sales_count
FROM sales
JOIN products USING(product_id)
GROUP BY category
ORDER BY sales_count DESC;















