-- 04_Populate_Tables.sql

INSERT INTO customers (customer_id, customer_name, segment)
SELECT DISTINCT
    customer_id,
    customer_name,
    segment
FROM stg_superstore;

SELECT COUNT(*) AS Total_Customers
FROM customers;

INSERT INTO products
(
    product_id,
    product_name,
    category,
    sub_category
)
SELECT DISTINCT
    product_id,
    product_name,
    category,
    sub_category
FROM stg_superstore;

SELECT COUNT(*) AS Total_Products
FROM products;

INSERT INTO locations
(
country,
city,
state,
postal_code,
region
)
SELECT DISTINCT
country,
city,
state,
postal_code,
region

FROM stg_superstore;

SELECT COUNT(*) AS Total_Locations
FROM locations;

INSERT INTO orders
(
order_id,
order_date,
ship_date,
ship_mode,
customer_id,
location_id
)

SELECT DISTINCT
s.order_id,
s.order_date,
s.ship_date,
s.ship_mode,
s.customer_id,
l.location_id

FROM stg_superstore 
JOIN locations l
ON s.country=l.country
AND s.city=l.city
AND s.state=l.state
AND s.postal_code=l.postal_code
AND s.region=l.region;

SELECT COUNT(*) AS Total_Orders
FROM orders;

INSERT INTO sales
(
order_id,
product_id,
sales,
quantity,
discount,
profit,
shipping_days,
profit_margin,
loss_order,
high_value_order,
order_size
)

SELECT
order_id,
product_id,
sales,
quantity,
discount,
profit,
shipping_days,
profit_margin,
loss_order,
high_value_order,
order_size
FROM stg_superstore;

SELECT COUNT(*) AS Sales_Records
FROM sales;

DROP TABLE IF EXISTS stg_returns;

CREATE TABLE stg_returns
(
Returned VARCHAR(10),
Order_ID VARCHAR(30)
);

INSERT INTO returns
(
order_id,
returned
)
SELECT
Order_ID,
Returned
FROM stg_returns;

SELECT COUNT(*)
FROM returns;
SELECT * FROM customers LIMIT 5;
SELECT * FROM products LIMIT 5;
SELECT * FROM locations LIMIT 5;
SELECT * FROM orders LIMIT 5;
SELECT * FROM sales LIMIT 5;
SELECT * FROM returns LIMIT 5;

SELECT
(SELECT COUNT(*) FROM customers) Customers,
(SELECT COUNT(*) FROM products) Products,
(SELECT COUNT(*) FROM locations) Locations,
(SELECT COUNT(*) FROM orders) Orders,
(SELECT COUNT(*) FROM sales) Sales,
(SELECT COUNT(*) FROM returns) Returns_Table;