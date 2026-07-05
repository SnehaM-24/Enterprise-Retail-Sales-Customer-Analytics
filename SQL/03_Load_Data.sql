-- 03_Load_Data.sql

DROP TABLE IF EXISTS stg_superstore;

CREATE TABLE stg_superstore
(
    row_id INT,
    order_id VARCHAR(30),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(30),
    country VARCHAR(50),
    city VARCHAR(80),
    state VARCHAR(80),
    postal_code VARCHAR(20),
    region VARCHAR(30),
    product_id VARCHAR(30),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2),
    shipping_days INT,
    profit_margin DECIMAL(10,2),
    loss_order VARCHAR(5),
    high_value_order VARCHAR(5),
    order_size VARCHAR(20)
);
SHOW TABLES;

SELECT COUNT(*)
FROM stg_superstore;

SELECT *
FROM stg_superstore
LIMIT 10;

SELECT
SUM(customer_id IS NULL) AS customer_nulls,
SUM(product_id IS NULL) AS product_nulls,
SUM(order_id IS NULL) AS order_nulls
FROM stg_superstore;

SELECT
order_id,
COUNT(*)
FROM stg_superstore
GROUP BY order_id
HAVING COUNT(*) > 1;