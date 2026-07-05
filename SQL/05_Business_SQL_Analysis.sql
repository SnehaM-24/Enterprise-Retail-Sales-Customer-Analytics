-- View all sales records
SELECT *
FROM sales;

-- Total Sales
SELECT
ROUND(SUM(sales),2) AS Total_Sales
FROM sales;

-- Total Profit
SELECT
ROUND(SUM(profit),2) AS Total_Profit
FROM sales;

-- Total Orders
SELECT
COUNT(DISTINCT order_id) AS Total_Orders
FROM sales;

-- Total Customers
SELECT
COUNT(*) AS Total_Customers
FROM customers;

-- Average Sales
SELECT
ROUND(AVG(sales),2) AS Average_Sales
FROM sales;

-- Highest Sale
SELECT
MAX(sales) AS Highest_Sale
FROM sales;

-- Lowest Sale
SELECT
MIN(sales) AS Lowest_Sale
FROM sales;

-- Top 10 Highest Sales
SELECT
order_id,
sales
FROM sales
ORDER BY sales DESC
LIMIT 10;

-- Orders with Loss
SELECT
order_id,
profit
FROM sales
WHERE profit < 0;

-- Sales by Category
SELECT
p.category,
ROUND(SUM(s.sales),2) AS Total_Sales
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY Total_Sales DESC;

-- Profit by Category
SELECT
p.category,
ROUND(SUM(s.profit),2) AS Total_Profit
FROM sales s
JOIN products p
ON s.product_id=p.product_id
GROUP BY p.category
ORDER BY Total_Profit DESC;

-- Sales by Segment
SELECT
c.segment,
ROUND(SUM(s.sales),2) AS Sales
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN customers c
ON o.customer_id=c.customer_id
GROUP BY c.segment
ORDER BY Sales DESC;

-- Sales by Region
SELECT
l.region,
ROUND(SUM(s.sales),2) AS Sales
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN locations l
ON o.location_id=l.location_id
GROUP BY l.region
ORDER BY Sales DESC;

-- Top 10 Customers
SELECT
c.customer_name,
ROUND(SUM(s.sales),2) AS Total_Sales
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN customers c
ON o.customer_id=c.customer_id
GROUP BY c.customer_name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 10 Products 
SELECT
p.product_name,
ROUND(SUM(s.sales),2) AS Total_Sales
FROM sales s
JOIN products p
ON s.product_id=p.product_id
GROUP BY p.product_name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Average Profit by Category
SELECT
p.category,
ROUND(AVG(s.profit),2) AS Avg_Profit
FROM sales s
JOIN products p
ON s.product_id=p.product_id
GROUP BY p.category;

-- Orders by Ship Mode
SELECT
ship_mode,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY ship_mode;

-- Average Shipping Days
SELECT
ROUND(AVG(shipping_days),2)
FROM sales;

-- High Value Orders
SELECT
COUNT(*)
FROM sales
WHERE high_value_order='Yes';

-- Top 10 Customers using RANK()
SELECT
    c.customer_name,
    ROUND(SUM(s.sales),2) AS total_sales,
    RANK() OVER(ORDER BY SUM(s.sales) DESC) AS customer_rank
FROM sales s
JOIN orders o
ON s.order_id = o.order_id
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_name;

-- Top Products using DENSE_RANK()
SELECT
    p.product_name,
    ROUND(SUM(s.sales),2) AS total_sales,
    DENSE_RANK() OVER(ORDER BY SUM(s.sales) DESC) AS product_rank
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name;

-- Running Total of Sales 
SELECT
    sales_id,
    sales,
    SUM(sales) OVER(
        ORDER BY sales_id
    ) AS running_sales
FROM sales;

 -- Average Sales using Window Function
SELECT
    sales_id,
    sales,
    ROUND(
        AVG(sales) OVER(),
        2
    ) AS average_sales
FROM sales;

-- Highest Profit Order
SELECT
order_id,
profit
FROM sales
ORDER BY profit DESC
LIMIT 1;

-- Lowest Profit Order
SELECT
order_id,
profit
FROM sales
ORDER BY profit
LIMIT 1;

-- Top 5 States by Sales
SELECT
l.state,
ROUND(SUM(s.sales),2) AS total_sales
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN locations l
ON o.location_id=l.location_id
GROUP BY l.state
ORDER BY total_sales DESC
LIMIT 5;

-- Bottom 5 States by Profit
SELECT
l.state,
ROUND(SUM(s.profit),2) AS total_profit
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN locations l
ON o.location_id=l.location_id
GROUP BY l.state
ORDER BY total_profit
LIMIT 5;

-- Category Contribution %
SELECT
p.category,
ROUND(SUM(s.sales),2) AS total_sales,
ROUND(
SUM(s.sales)/
(
SELECT SUM(sales)
FROM sales
)*100,
2
) AS sales_percentage
FROM sales s
JOIN products p
ON s.product_id=p.product_id
GROUP BY p.category;

-- Customer Lifetime Value
SELECT
c.customer_name,
ROUND(SUM(s.sales),2) AS lifetime_sales,
ROUND(SUM(s.profit),2) AS lifetime_profit
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN customers c
ON o.customer_id=c.customer_id
GROUP BY c.customer_name
ORDER BY lifetime_sales DESC;

-- Customers with Sales above Average
WITH customer_sales AS
(
SELECT
c.customer_name,
SUM(s.sales) total_sales
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN customers c
ON o.customer_id=c.customer_id
GROUP BY c.customer_name
)
SELECT *
FROM customer_sales
WHERE total_sales>
(
SELECT AVG(total_sales)
FROM customer_sales
);

-- Products with Profit > Average
WITH product_profit AS
(
SELECT
p.product_name
SUM(s.profit) total_profit
FROM sales s
JOIN products p
ON s.product_id=p.product_id
GROUP BY p.product_name
)
SELECT *
FROM product_profit
WHERE total_profit>
(
SELECT AVG(total_profit)
FROM product_profit
);

-- Top Customer from Each Segment
WITH segment_sales AS
(
SELECT
c.segment,
c.customer_name,
SUM(s.sales) total_sales,
ROW_NUMBER() OVER(
PARTITION BY c.segment
ORDER BY SUM(s.sales) DESC
) rn
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN customers c
ON o.customer_id=c.customer_id
GROUP BY c.segment,c.customer_name
)
SELECT *
FROM segment_sales
WHERE rn=1;

-- Monthly Sales
SELECT
DATE_FORMAT(order_date,'%Y-%m') Month,
ROUND(SUM(s.sales),2) Sales
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
GROUP BY Month
ORDER BY Month;

-- Monthly Profit
SELECT
DATE_FORMAT(order_date,'%Y-%m') Month,
ROUND(SUM(s.profit),2) Profit
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
GROUP BY Month
ORDER BY Month;

-- Top 10 Loss Making Products
SELECT
    p.product_name,
    ROUND(SUM(s.profit),2) AS total_loss
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name
HAVING SUM(s.profit) < 0
ORDER BY total_loss ASC
LIMIT 10;

-- Most Profitable Products
SELECT
    p.product_name,
    ROUND(SUM(s.profit),2) AS total_profit
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit DESC
LIMIT 10;

-- Top 10 Cities by Sales
SELECT
    l.city,
    ROUND(SUM(s.sales),2) AS total_sales
FROM sales s
JOIN orders o
ON s.order_id = o.order_id
JOIN locations l
ON o.location_id = l.location_id
GROUP BY l.city
ORDER BY total_sales DESC
LIMIT 10;

-- Top 10 States by Profit
SELECT
    l.state,
    ROUND(SUM(s.profit),2) AS total_profit
FROM sales s
JOIN orders o
ON s.order_id = o.order_id
JOIN locations l
ON o.location_id = l.location_id
GROUP BY l.state
ORDER BY total_profit DESC
LIMIT 10;

-- Average Discount by Category
SELECT
    p.category,
    ROUND(AVG(s.discount),2) AS avg_discount
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.category;

-- Profit by Ship Mode
SELECT
    o.ship_mode,
    ROUND(SUM(s.profit),2) AS total_profit
FROM sales s
JOIN orders o
ON s.order_id = o.order_id
GROUP BY o.ship_mode
ORDER BY total_profit DESC;

-- Top Customers by Profit
SELECT
    c.customer_name,
    ROUND(SUM(s.profit),2) AS total_profit
FROM sales s
JOIN orders o
ON s.order_id = o.order_id
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_profit DESC
LIMIT 10;

-- Sales by Order Size
SELECT
    order_size,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales),2) AS total_sales
FROM sales
GROUP BY order_size;

-- High Value Orders Analysis
SELECT
    high_value_order,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit
FROM sales
GROUP BY high_value_order;

-- Loss Orders Analysis
SELECT
    loss_order,
    COUNT(*) AS total_orders,
    ROUND(SUM(profit),2) AS total_profit
FROM sales
GROUP BY loss_order;

-- Top Category in Each Region
WITH category_sales AS (
SELECT
    l.region,
    p.category,
    SUM(s.sales) AS total_sales,
    RANK() OVER(
        PARTITION BY l.region
        ORDER BY SUM(s.sales) DESC
    ) AS rnk
FROM sales s
JOIN orders o
ON s.order_id = o.order_id
JOIN products p
ON s.product_id = p.product_id
JOIN locations l
ON o.location_id = l.location_id
GROUP BY l.region, p.category
)
SELECT *
FROM category_sales
WHERE rnk = 1;

-- Customer Purchase Frequency
SELECT
    c.customer_name,
    COUNT(DISTINCT s.order_id) AS total_orders
FROM sales s
JOIN orders o
ON s.order_id = o.order_id
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_orders DESC;
 
-- Monthly Running Sales
SELECT
    DATE_FORMAT(o.order_date,'%Y-%m') AS month,
    SUM(s.sales) AS monthly_sales,
    SUM(SUM(s.sales)) OVER(
        ORDER BY DATE_FORMAT(o.order_date,'%Y-%m')
    ) AS running_sales
FROM sales s
JOIN orders o
ON s.order_id = o.order_id
GROUP BY month;	

-- Top 20% Customers (Pareto Analysis)
SELECT
    c.customer_name,
    ROUND(SUM(s.sales),2) AS total_sales
FROM sales s
JOIN orders o
ON s.order_id = o.order_id
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC
LIMIT (
    SELECT CEIL(COUNT(*) * 0.20)
    FROM customers
);

-- Executive Business Summary
SELECT
COUNT(DISTINCT o.order_id) AS Total_Orders,
COUNT(DISTINCT c.customer_id) AS Total_Customers,
COUNT(DISTINCT p.product_id) AS Total_Products,
ROUND(SUM(s.sales),2) AS Total_Sales,
ROUND(SUM(s.profit),2) AS Total_Profit,
ROUND(AVG(s.profit_margin),2) AS Avg_Profit_Margin,
ROUND(AVG(s.shipping_days),2) AS Avg_Shipping_Days
FROM sales s
JOIN orders o
ON s.order_id = o.order_id
JOIN customers c
ON o.customer_id = c.customer_id
JOIN products p
ON s.product_id = p.product_id; 

