CREATE DATABASE online_store;
USE online_store;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price INT
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);


INSERT INTO customers VALUES (1, 'Krish', 'krish@gmail.com');
INSERT INTO products VALUES (1, 'Laptop', 50000);
INSERT INTO orders VALUES (1, 1, 1);


SELECT c.name, p.name
FROM customers c
JOIN orders o ON c.id = o.customer_id
JOIN products p ON p.id = o.product_id;


SELECT COUNT(*) FROM orders;

SELECT * FROM products WHERE price > 30000;