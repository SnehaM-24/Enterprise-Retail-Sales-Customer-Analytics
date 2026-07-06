# 📊 Enterprise Retail Sales & Customer Analytics Platform

  An end-to-end Data Analytics project built using **Python, MySQL, and Power BI** to analyze retail sales performance, customer behavior, product profitability, and business KPIs.

---

# 📌 Project Overview

Retail businesses generate thousands of transactions every day. However, raw transactional data alone cannot help management make informed decisions.

This project transforms raw retail sales data into meaningful business insights by applying data cleaning, exploratory data analysis (EDA), feature engineering, SQL-based business analysis, and interactive Power BI dashboards.

The objective is to help stakeholders monitor sales performance, identify profitable products, understand customer purchasing behavior, and support data-driven decision-making.

---

# 🎯 Business Problem

The company wants to answer key business questions such as:

- Which products generate the highest revenue?
- Which products are causing losses?
- Which customer segments contribute the most sales?
- Which regions perform best?
- What is the relationship between discounts and profit?
- How can shipping performance be improved?
- Which customers should be retained?

---

# 🎯 Project Objectives

- Clean and preprocess retail sales data.
- Perform exploratory data analysis.
- Create business-driven features.
- Design a normalized SQL database.
- Write business SQL queries.
- Build interactive Power BI dashboards.
- Generate actionable business recommendations.

---

# 🛠️ Tech Stack

| Tool | Purpose |
|-------|----------|
| Python | Data Cleaning, EDA, Feature Engineering |
| Pandas | Data Manipulation |
| NumPy | Numerical Operations |
| Matplotlib | Data Visualization |
| MySQL Workbench | Database Design & SQL Analysis |
| Power BI | Dashboard & Business Intelligence |
| Git & GitHub | Version Control |

---

# 📂 Project Structure

```text
Enterprise_Retail_Analytics/

│
├── Dataset/
│   ├── Sample-Superstore.xls
│   ├── clean_superstore.csv
│   └── superstore_feature_engineered.csv
│
├── Python/
│   ├── 01_Data_Cleaning.ipynb
│   ├── 02_EDA.ipynb
│   └── 03_Feature_Engineering.ipynb
│
├── SQL/
│   ├── 01_Database_Setup.sql
│   ├── 02_Create_Tables.sql
│   ├── 03_Load_Data.sql
│   ├── 04_Populate_Tables.sql
│   ├── 05_Business_SQL_Analysis.sql
│   ├── 06_Views.sql
│   ├── 07_Stored_Procedures.sql
│   └── 08_Indexes.sql
│
├── PowerBI/
│   └── Enterprise_Retail_Analytics.pbix
│
├── Documentation/
│   ├── Business_Report.pdf
│   └── Data_Dictionary.xlsx
│
├── README.md
├── requirements.txt
└── LICENSE
```

---

# 📊 Dataset Information

- Retail Orders
- Customer Information
- Product Details
- Regional Information
- Sales
- Profit
- Discount
- Quantity
- Shipping Details

Total Records: **10,194**

---

# 🔄 Project Workflow

```text
Raw Excel Data
        │
        ▼
Data Cleaning (Python)
        │
        ▼
Exploratory Data Analysis
        │
        ▼
Feature Engineering
        │
        ▼
MySQL Database
        │
        ▼
Business SQL Analysis
        │
        ▼
Power BI Dashboard
        │
        ▼
Business Insights
```

---

# 🧹 Data Cleaning

- Removed duplicate records
- Checked missing values
- Converted date columns
- Standardized column names
- Corrected data types
- Exported cleaned dataset

---

# 📈 Exploratory Data Analysis

- Sales Distribution
- Profit Distribution
- Category Analysis
- Sub-Category Analysis
- Regional Analysis
- Customer Segment Analysis
- Monthly Sales Trend
- State-wise Performance

---

# ⚙️ Feature Engineering

Created new business features:

- Shipping Days
- Profit Margin %
- Order Year
- Order Month
- Order Quarter
- High Value Orders
- Loss Orders
- Order Size
- Customer Lifetime Sales
- Customer Lifetime Profit
- Top Customer Flag

---

# 🗄️ SQL Database Design

Normalized relational database with:

- Customers
- Products
- Orders
- Sales
- Locations
- Returns

Also implemented:

- Primary Keys
- Foreign Keys
- Views
- Stored Procedures
- Indexes

---

# 📊 Business KPIs

- Total Sales
- Total Profit
- Profit Margin %
- Total Orders
- Total Customers
- Total Products
- Average Order Value
- Average Shipping Days
- Sales by Region
- Sales by Category
- Top Customers
- Top Products

---

# 📈 Key Business Insights

- Technology category generated the highest sales.
- A few products contributed to overall losses despite strong sales.
- High discounts negatively impacted profitability.
- The Consumer segment generated the largest share of revenue.
- Western region delivered the highest overall sales.
- A small percentage of customers contributed significantly to total revenue.

---

# 💡 Business Recommendations

- Reduce excessive discounting on low-margin products.
- Focus marketing efforts on high-value customers.
- Optimize inventory for best-selling products.
- Improve shipping efficiency to reduce delivery time.
- Review pricing strategy for loss-making products.
- Increase cross-selling opportunities in profitable categories.

---

# 📊 Power BI Dashboard

Dashboard includes:

- Executive Dashboard
- Sales Analysis
- Customer Analysis
- Product Analysis
- Regional Analysis
- Profit Analysis
- Shipping Analysis
- KPI Dashboard

---

# 🚀 Future Improvements

- Sales Forecasting
- Customer Segmentation using Machine Learning
- Demand Prediction
- Inventory Optimization
- Automated ETL Pipeline

---

# 👩‍💻 Author

**Sneha Madyapgol**

Aspiring Data Analyst passionate about transforming raw data into meaningful business insights using Python, SQL, and Power BI.

---

# ⭐ If you found this project useful

Please consider giving it a ⭐ on GitHub.
