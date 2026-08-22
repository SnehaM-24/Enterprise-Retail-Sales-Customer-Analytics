# Enterprise Retail Sales & Customer Analytics

## 📌 Project Overview

An interactive business intelligence project designed to analyze retail sales performance, profitability, customer purchasing behavior, product performance, regional performance, and business trends.

The project transforms transactional retail data into actionable business insights using **Power BI, Power Query, DAX, and Data Modeling**.

The analysis focuses on helping business teams understand:

* Sales and profit performance
* Product and category performance
* Sub-category performance
* Customer purchasing behavior
* RFM-based customer segmentation
* High-value and at-risk customers
* Loss-making products and line items
* Discount impact on profitability
* Regional and state-level performance
* Year-over-year sales and profit trends
* Shipping mode performance

---

## 🎯 Business Problem

Retail businesses generate large volumes of transaction, product, customer, and regional data, but raw transaction records do not directly explain:

* Which categories generate the most sales?
* Which products contribute the most revenue?
* Which products generate negative profit?
* Which regions and states perform best?
* Which customers are the most valuable?
* Which customers are at risk of becoming inactive?
* How do discounts affect profitability?
* Which shipping modes generate the most orders and profit?
* How does sales and profit performance change over time?
* Which areas require management attention?

This project addresses these questions through data cleaning, transformation, business analysis, customer segmentation, profitability analysis, and an interactive Power BI dashboard.

---

## 🎯 Project Objectives

1. Analyze overall retail sales and profitability.
2. Identify high-performing product categories and sub-categories.
3. Identify high-sales and loss-making products.
4. Understand customer purchasing behavior.
5. Segment customers using RFM analysis.
6. Identify high-value, loyal, at-risk, and inactive customers.
7. Analyze discount levels and their relationship with profitability.
8. Evaluate regional and state-level sales performance.
9. Analyze year-over-year sales and profit trends.
10. Evaluate shipping mode performance.
11. Build an interactive Power BI dashboard for business decision-making.
12. Provide actionable recommendations that can help improve profitability, customer retention, and sales performance.

---

## 🛠️ Tools & Technologies

| Tool / Technology | Purpose |
| ----------------- | ------- |
| Power BI | Interactive dashboard and business visualization |
| Power Query | Data cleaning and transformation |
| DAX | KPI calculations and analytical measures |
| Data Modeling | Structuring relationships and analytical reporting |
| Excel / CSV | Source data and data preparation |

---

## 📂 Dataset

The project uses a retail sales dataset containing transactional, customer, product, category, regional, shipping, discount, sales, and profit information.

### Key fields include:

* Order ID
* Order Date
* Customer ID
* Customer Name
* Product Name
* Category
* Sub-Category
* Sales
* Quantity
* Discount
* Profit
* Region
* State
* Ship Mode
* Customer-related transaction information

---

# 🔄 Project Workflow

```text
Raw Retail Dataset
        ↓
Data Understanding
        ↓
Data Cleaning & Transformation
        ↓
Data Validation
        ↓
Exploratory Analysis
        ↓
Sales & Profitability Analysis
        ↓
Product & Category Analysis
        ↓
Customer Analysis
        ↓
RFM Customer Segmentation
        ↓
Regional & Trend Analysis
        ↓
Power BI Data Modeling
        ↓
DAX Measures & KPIs
        ↓
Interactive Dashboard
        ↓
Business Insights
        ↓
Business Recommendations
````

---

# 🧹 Data Preparation & Transformation

Power Query was used to prepare the retail dataset for analysis.

Key activities included:

* Data inspection
* Data type validation
* Data cleaning
* Handling data inconsistencies
* Date transformation
* Column preparation
* Data formatting
* Creating analytical fields
* Preparing the dataset for Power BI modeling

---

# 📊 Sales & Profitability Analysis

The project analyzes retail performance from both sales and profitability perspectives.

The analysis focuses on:

* Total Sales
* Total Profit
* Profit Margin
* Total Orders
* Average Order Value
* Monthly Sales Trend
* Monthly Profit Trend
* Sales by Category
* Sales by Region
* Sales by Customer Segment

A key focus of the project is to evaluate **sales and profit together**, because high sales do not always result in high profitability.

---

# 📦 Product & Category Analysis

Product-level analysis was performed to identify high-performing and underperforming products.

The dashboard analyzes:

* Top 10 Products by Sales
* Sales by Category
* Sales by Sub-Category
* Product-level Profit
* High-sales products
* Loss-making products
* Discount Band vs Profit

This analysis helps identify products that generate strong revenue as well as products that may require pricing, discount, or cost review.

---

# 💰 Discount & Profit Analysis

The project analyzes the relationship between discount levels and profitability.

Discount bands are evaluated across:

* Sales
* Profit
* Profitability trends

The analysis helps identify situations where higher discounts may reduce profitability.

This can support better promotional and pricing decisions.

---

# 🚚 Ship Mode Performance

Shipping performance is analyzed using:

* Orders by Ship Mode
* Profit by Ship Mode
* Average delivery days

The analysis helps businesses understand the relationship between order volume, profitability, and shipping performance.

---

# 👥 RFM Customer Segmentation

RFM analysis was used to understand customer value and purchasing behavior.

Customers are evaluated using:

### Recency

How recently a customer made a purchase.

### Frequency

How frequently a customer purchased.

### Monetary

How much value a customer generated through purchases.

Customers were classified into segments such as:

* Champions
* Loyal Customers
* Potential Loyalists
* At Risk
* Lost / Hibernating

This segmentation helps businesses understand different customer groups and design targeted retention and engagement strategies.

---

# 🎯 Customer Segment Strategy

### Champions

Customers who purchased recently, purchase frequently, and generate high monetary value.

**Recommended actions:**

* Retention campaigns
* Loyalty benefits
* Premium offers
* Cross-selling
* Upselling

### Loyal Customers

Consistent customers with reliable purchasing behavior.

**Recommended actions:**

* Upselling
* Cross-selling
* Loyalty rewards
* Personalized offers

### Potential Loyalists

Recently active customers who have potential to become long-term loyal customers.

**Recommended actions:**

* Targeted offers
* Engagement campaigns
* Purchase-frequency incentives

### At Risk

Customers who previously showed stronger purchasing behavior but have become less active.

**Recommended actions:**

* Re-engagement campaigns
* Personalized promotions
* Win-back strategies

### Lost / Hibernating

Customers with low recent activity and low purchasing frequency.

**Recommended actions:**

* Selective win-back campaigns
* Low-cost reactivation offers
* Avoid excessive marketing spending

---

# 🌎 Regional & State Analysis

Regional and geographical analysis was performed to understand sales and profitability across different markets.

The dashboard analyzes:

* Sales by Region
* Profit by Region
* Top 10 States by Sales
* Bottom 5 States by Profit
* Regional sales trends
* Regional profitability

This helps management identify strong-performing markets as well as regions and states that require improvement.

---

# 📈 Year-over-Year Trend Analysis

Year-over-year analysis is used to evaluate changes in:

* Sales
* Profit
* Overall business performance

The analysis helps management understand whether business performance is improving or declining over time and supports better planning and decision-making.

---

# 📊 Power BI Dashboard

The Power BI report contains four analytical pages.

## 1. Executive Overview

Provides a high-level view of overall retail business performance.

### Key KPIs

* Total Sales — ₹23,26,534
* Total Profit — ₹2,92,296
* Total Orders — 5,111
* Total Customers — 800
* Average Order Value — ₹455.20
* Profit Margin — 12.6%

### Key Visuals

* Monthly Sales & Profit Trend
* Sales by Category
* Sales by Region
* Sales by Customer Segment
* Dynamic Business Insights

### Business Questions Answered

* How is sales performance changing over time?
* Which category generates the highest sales?
* Which region performs best?
* Which customer segment contributes the most sales?
* Where are the major profitability concerns?

---

## 2. Sales & Product Performance

Focuses on product and category-level performance.

### Key Analysis

* Top 10 Products by Sales
* Sales by Sub-Category
* Discount Band vs Profit
* Ship Mode Performance
* Product-level Sales
* Product-level Profit

### Business Questions Answered

* Which products generate the highest sales?
* Which sub-categories perform best?
* Which products generate negative profit?
* Does higher discounting affect profitability?
* Which shipping modes generate the most orders and profit?

---

## 3. Customer Analytics

Focuses on customer value, purchasing behavior, and segmentation.

### Key Analysis

* RFM Customer Segmentation
* RFM Segment Distribution
* Customer Segment Playbook
* Top 10 Customers by Sales
* Customer Sales
* Customer Profit
* Customer Order Performance

### Customer Segments

* Champions
* Loyal Customers
* Potential Loyalists
* At Risk
* Lost / Hibernating

### Business Questions Answered

* Who are the most valuable customers?
* Which customers are loyal?
* Which customers have potential to become loyal?
* Which customers are at risk?
* Which customers require re-engagement?

---

## 4. Regional & Trend Analysis

Focuses on geographical performance and long-term trends.

### Key Analysis

* Regional Sales & Profit
* Year-over-Year Sales & Profit
* Top 10 States by Sales
* Bottom 5 States by Profit

### Business Questions Answered

* Which region generates the highest sales?
* Which regions generate the highest profit?
* Which states perform best?
* Which states generate negative profit?
* How is sales performance changing year over year?

---

# 📌 Key KPIs

The dashboard tracks:

* Total Sales
* Total Profit
* Total Orders
* Total Customers
* Average Order Value
* Profit Margin

---

# 💡 Key Business Insights

The analysis enables management to identify:

* Technology as a strong-performing sales category.
* West as the highest-performing region by sales.
* Overall profit margin of approximately 12.6%.
* A significant number of loss-making line items.
* Products that generate high sales but negative profit.
* Customer segments with different levels of value and engagement.
* High-value customers that should be prioritized for retention.
* At-risk customers that may require re-engagement.
* States with strong sales performance.
* States generating sales but experiencing negative profitability.
* The relationship between discount levels and profit.
* Year-over-year changes in sales and profitability.

---

# 📈 Key Dashboard Findings

Based on the analyzed dashboard:

### Category Performance

Technology generated approximately **₹8.4L in sales**, representing around **36% of the filtered sales total**.

### Regional Performance

West was the highest-performing region with approximately **₹7.4L in sales**.

### Overall Profitability

The overall profit margin was approximately **12.6%**.

### Loss-Making Transactions

Approximately **1,901 line items (18.6%)** were identified as currently selling at a loss.

### Product Profitability

Some products generated strong sales while still producing negative profit, highlighting opportunities for pricing, discount, and cost optimization.

### Customer Intelligence

RFM segmentation identified different customer groups ranging from high-value Champions to At-Risk and Lost/Hibernating customers.

---

# 💼 Business Benefits

The dashboard is designed to provide practical value to retail organizations.

## 1. Profitability Improvement

The dashboard helps identify loss-making products, categories, and regions.

This can help management review:

* Pricing
* Discounts
* Product costs
* Regional profitability
* Promotional strategies

**Business benefit:**

Better visibility into profit leakage can support improved margin management.

---

## 2. Customer Retention

RFM segmentation helps identify valuable and at-risk customers.

Businesses can use this information to:

* Retain Champions
* Reward Loyal Customers
* Develop Potential Loyalists
* Re-engage At-Risk customers
* Selectively target Lost customers

**Business benefit:**

More targeted customer strategies instead of applying the same marketing approach to every customer.

---

## 3. Product Portfolio Optimization

Product-level analysis helps identify:

* High-sales products
* High-profit products
* Low-profit products
* Loss-making products

**Business benefit:**

Management can prioritize profitable products and investigate products that generate sales but negatively affect profit.

---

## 4. Regional Decision-Making

Regional and state-level analysis helps identify:

* Strong markets
* Weak markets
* High-sales but low-profit locations
* Regional growth opportunities

**Business benefit:**

Management can allocate sales, marketing, and operational resources more effectively.

---

## 5. Better Pricing & Discount Decisions

Discount Band vs Profit analysis helps identify how discounting can affect profitability.

**Business benefit:**

Businesses can evaluate whether increased sales from discounts are generating sufficient profit.

---

## 6. Better Sales Planning

Historical sales and year-over-year analysis can support:

* Sales planning
* Regional planning
* Product prioritization
* Performance monitoring

**Business benefit:**

Management can make decisions using historical performance rather than assumptions alone.

---

## 7. Faster Management Reporting

The dashboard provides a centralized view of important business KPIs.

**Business benefit:**

Reduced dependency on manually prepared reports and faster access to business performance information.

---

## 8. Data-Driven Decision Making

The dashboard converts:

**Raw Data → Analysis → Insights → Business Actions**

This helps decision-makers focus on measurable business performance instead of assumptions.

---

# 🎯 Business Recommendations

### 1. Profitability Optimization

Investigate products and regions generating negative profit and review pricing, discounting, and cost structures.

### 2. Customer Retention

Prioritize Champions and Loyal Customers while developing targeted re-engagement strategies for At-Risk customers.

### 3. Product Optimization

Evaluate products with high sales but low or negative profit before increasing their promotional focus.

### 4. Discount Optimization

Review high-discount transactions to ensure increased sales are not reducing overall profitability.

### 5. Regional Strategy

Investigate states and regions generating negative profit despite strong sales.

### 6. Sales Strategy

Monitor both revenue and profitability when evaluating product and regional performance.

### 7. Customer Strategy

Use RFM segments to personalize customer engagement instead of applying the same strategy to all customers.

---

# 🔄 Dashboard Interactivity

The dashboard includes interactive analytical capabilities such as:

* Cross-filtering
* Category-level filtering
* Regional analysis
* Product-level analysis
* Customer segmentation
* RFM analysis
* Drill-down analysis
* Interactive charts
* Dynamic KPI updates
* Comparative analysis
* Click-to-filter interactions

These features allow users to move from high-level business performance to more detailed analysis.

---

# 📸 Dashboard Screenshots

## Executive Overview

![Executive Overview](screenshots/executive_overview.png)

---

## Sales & Product Performance

![Sales & Product Performance](screenshots/sales_product_performance.png)

---

## Customer Analytics

![Customer Analytics](screenshots/customer_analytics.png)

---

## Regional & Trend Analysis

![Regional & Trend Analysis](screenshots/regional_trend_analysis.png)

---

# 📁 Project Structure

```text
Enterprise-Retail-Sales-Customer-Analytics/
│
├── data/
│   └── retail_sales_data.csv
│
├── powerbi/
│   └── Enterprise_Retail_Sales_Customer_Analytics.pbix
│
├── screenshots/
│   ├── executive_overview.png
│   ├── sales_product_performance.png
│   ├── customer_analytics.png
│   └── regional_trend_analysis.png
│
├── reports/
│   └── Enterprise_Retail_Analytics_Report.pdf
│
├── insights/
│   └── business_insights.md
│
└── README.md
```

---

# 🚀 Future Scope

Potential extensions include:

* Sales forecasting
* Customer lifetime value analysis
* Customer churn prediction
* Product demand forecasting
* Advanced customer segmentation
* Inventory and stock analysis
* Promotion effectiveness analysis
* Automated Power BI refresh
* Regional sales forecasting
* Predictive profitability analysis

---

# 👤 Skills Demonstrated

## Data Analytics

* Data Cleaning
* Data Transformation
* Exploratory Data Analysis
* Sales Analysis
* Profitability Analysis
* Customer Analytics
* Product Analysis
* Regional Analysis
* RFM Customer Segmentation
* Trend Analysis

## Power BI

* Dashboard Development
* Data Modeling
* DAX
* KPI Design
* Interactive Visualizations
* Cross-filtering
* Drill-down Analysis
* Conditional Formatting
* Business Intelligence Reporting

## Business Analytics

* Business Problem Solving
* Insight Generation
* Customer Segmentation
* Profitability Analysis
* Performance Monitoring
* Business Recommendations
* Data-Driven Decision Making

---

## 📌 Project Outcome

This project demonstrates an end-to-end retail analytics workflow from transactional data to business-ready insights and an interactive Power BI dashboard.

The solution provides management with visibility into:

**Sales → Profitability → Products → Customers → Regions → Trends**

The dashboard helps identify high-performing areas, profit leakage, valuable customer segments, underperforming products, and regional opportunities.

Most importantly, the project demonstrates how retail data can be transformed into **actionable business insights that can support profitability improvement, customer retention, product optimization, regional decision-making, and faster management reporting.**

---
