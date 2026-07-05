-- 02_Create_Tables.sql

CREATE TABLE customers
(
    customer_id VARCHAR(20) PRIMARY KEY,

    customer_name VARCHAR(100) NOT NULL,

    segment VARCHAR(30) NOT NULL
);
CREATE TABLE products
(
    product_id VARCHAR(30) PRIMARY KEY,

    product_name VARCHAR(255) NOT NULL,

    category VARCHAR(50),

    sub_category VARCHAR(50)
);
CREATE TABLE locations
(
    location_id INT AUTO_INCREMENT PRIMARY KEY,

    country VARCHAR(50),

    city VARCHAR(80),

    state VARCHAR(80),

    postal_code VARCHAR(20),

    region VARCHAR(30)
);
CREATE TABLE orders
(
    order_id VARCHAR(30) PRIMARY KEY,

    order_date DATE,

    ship_date DATE,

    ship_mode VARCHAR(50),

    customer_id VARCHAR(20),

    location_id INT,

    CONSTRAINT fk_customer
        FOREIGN KEY(customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_location
        FOREIGN KEY(location_id)
        REFERENCES locations(location_id)
);
CREATE TABLE sales
(
    sales_id INT AUTO_INCREMENT PRIMARY KEY,

    order_id VARCHAR(30),

    product_id VARCHAR(30),

    sales DECIMAL(10,2),

    quantity INT,

    discount DECIMAL(5,2),

    profit DECIMAL(10,2),

    shipping_days INT,

    profit_margin DECIMAL(8,2),

    loss_order VARCHAR(5),

    high_value_order VARCHAR(5),

    order_size VARCHAR(20),

    CONSTRAINT fk_order
        FOREIGN KEY(order_id)
        REFERENCES orders(order_id),

    CONSTRAINT fk_product
        FOREIGN KEY(product_id)
        REFERENCES products(product_id)
);
CREATE TABLE returns
(
    return_id INT AUTO_INCREMENT PRIMARY KEY,

    order_id VARCHAR(30),

    returned VARCHAR(10),

    CONSTRAINT fk_return_order
        FOREIGN KEY(order_id)
        REFERENCES orders(order_id)
);
SHOW TABLES;

DESC customers;
DESC products;
DESC locations;
DESC orders;
DESC sales;
DESC returns;