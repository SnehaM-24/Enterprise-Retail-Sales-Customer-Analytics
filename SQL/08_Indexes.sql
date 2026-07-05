CREATE INDEX idx_customer
ON customers(customer_name);

CREATE INDEX idx_product
ON products(product_name);

CREATE INDEX idx_orderdate
ON orders(order_date);

CREATE INDEX idx_region
ON locations(region);

CREATE INDEX idx_category
ON products(category);

SHOW INDEX
FROM customers;

SHOW INDEX
FROM products;

SHOW INDEX
FROM orders;

SHOW INDEX
FROM locations;