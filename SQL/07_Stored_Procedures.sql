-- Customer Sales Report
DELIMITER $$
CREATE PROCEDURE GetCustomerSales
(
IN customerName VARCHAR(100)
)
BEGIN
SELECT
c.customer_name,
ROUND(SUM(s.sales),2) Total_Sales,
ROUND(SUM(s.profit),2) Total_Profit
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN customers c
ON o.customer_id=c.customer_id
WHERE c.customer_name=customerName
GROUP BY c.customer_name;
END $$
DELIMITER ;

CALL GetCustomerSales('Sean Miller');

-- Region Sales
DELIMITER $$
CREATE PROCEDURE RegionSales
(
IN regionName VARCHAR(30)
)
BEGIN
SELECT
l.region,
ROUND(SUM(s.sales),2) Sales,
ROUND(SUM(s.profit),2) Profit
FROM sales s
JOIN orders o
ON s.order_id=o.order_id
JOIN locations l
ON o.location_id=l.location_id
WHERE l.region=regionName
GROUP BY l.region;
END $$
DELIMITER ;