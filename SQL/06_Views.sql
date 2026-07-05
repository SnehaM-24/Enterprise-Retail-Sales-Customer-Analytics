-- Sales Dashboard
CREATE OR REPLACE VIEW vw_sales_dashboard AS
SELECT
s.order_id,
o.order_date,
c.customer_name,
c.segment,
l.region,
l.state,
p.category,
p.sub_category,
p.product_name,
s.sales,
s.profit,
s.quantity,
s.discount,
s.shipping_days
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN customers c
ON o.customer_id=c.customer_id
JOIN products p
ON s.product_id=p.product_id
JOIN locations l
ON o.location_id=l.location_id;

SELECT *
FROM vw_sales_dashboard
LIMIT 20;

-- Customer Performance
CREATE OR REPLACE VIEW vw_customer_performance AS
SELECT
c.customer_id,
c.customer_name,
c.segment,
COUNT(DISTINCT s.order_id) Total_Orders,
ROUND(SUM(s.sales),2) Total_Sales,
ROUND(SUM(s.profit),2) Total_Profit,
ROUND(AVG(s.sales),2) Avg_Order_Value
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN customers c
ON o.customer_id=c.customer_id
GROUP BY
c.customer_id,
c.customer_name,
c.segment;

SELECT *
FROM vw_customer_performance;

-- Product Performance
CREATE OR REPLACE VIEW vw_product_performance AS
SELECT
p.product_id,
p.product_name,
p.category,
p.sub_category,
SUM(s.quantity) Quantity_Sold,
ROUND(SUM(s.sales),2) Total_Sales,
ROUND(SUM(s.profit),2) Total_Profit
FROM sales s
JOIN products p
ON s.product_id=p.product_id
GROUP BY
p.product_id,
p.product_name,
p.category,
p.sub_category;

-- Regional Performance
CREATE OR REPLACE VIEW vw_region_performance AS
SELECT
l.region,
ROUND(SUM(s.sales),2) Total_Sales,
ROUND(SUM(s.profit),2) Total_Profit,
COUNT(DISTINCT o.order_id) Orders
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN locations l
ON o.location_id=l.location_id
GROUP BY l.region;

-- Monthly Sales Trend
CREATE OR REPLACE VIEW vw_monthly_sales AS
SELECT
DATE_FORMAT(o.order_date,'%Y-%m') Month,
ROUND(SUM(s.sales),2) Monthly_Sales,
ROUND(SUM(s.profit),2) Monthly_Profit
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
GROUP BY Month;

SHOW FULL TABLES
WHERE Table_type='VIEW';