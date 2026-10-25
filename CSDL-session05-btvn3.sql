CREATE DATABASE session05_btvn3;
USE session05_btvn3;

CREATE TABLE products(
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    price DECIMAL (20, 2)
);

SELECT*FROM products
WHERE price > (
	SELECT AVG(price)
    FROM products
);

SELECT*FROM products p
WHERE price = (
	SELECT MAX(price)
    FROM products
    WHERE category = p.category
);

SELECT*FROM products
WHERE category IN (
	SELECT category
    FROM products
    WHERE price > 20000000
);