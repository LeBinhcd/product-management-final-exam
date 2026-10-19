CREATE DATABASE IF NOT EXISTS product_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE product_db;
CREATE TABLE IF NOT EXISTS products (id INT PRIMARY KEY AUTO_INCREMENT,name VARCHAR(255) NOT NULL,price DECIMAL(12,2) NOT NULL,quantity INT NOT NULL DEFAULT 0);
INSERT INTO products(name,price,quantity) VALUES ('Laptop Lenovo',15990000.00,10),('Chuột không dây',350000.00,25),('Bàn phím cơ',1200000.00,15);
