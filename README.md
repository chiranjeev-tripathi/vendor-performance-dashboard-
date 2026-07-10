# 📊 Vendor Performance Dashboard

> An End-to-End Data Analytics Project built using **Python, SQL Server, and Power BI** to analyze vendor performance, inventory management, purchasing costs, sales trends, and business profitability.

#  Project Overview

The Vendor Performance Dashboard is a Business Intelligence solution designed to help organizations monitor vendor performance, inventory movement, purchasing costs, and sales performance.

The project combines Python for data preprocessing, SQL Server for data exploration and business queries, and Power BI for interactive dashboard development.

The dashboard enables stakeholders to identify:

- Top Performing Vendors
- Vendor Profitability
- Sales Trends
- Inventory Movement
- Fast & Slow Moving Products
- Store Performance
- Purchase Cost Analysis
- Revenue by Brand
- Inventory Value Distribution

---

#  Business Problem

Businesses dealing with multiple vendors often struggle to answer questions such as:

- Which vendors generate the highest revenue?
- Which vendors are most profitable?
- Which stores perform the best?
- Which products remain overstocked?
- Which products sell the fastest?
- How much inventory remains after sales?
- How much money is tied up in inventory?
- Which brands contribute the highest revenue?

Without proper analytics, these decisions become difficult and inefficient.

This dashboard transforms raw transactional data into actionable business insights.

---

#  Objectives

- Analyze vendor-wise revenue
- Measure vendor profitability
- Compare store performance
- Track monthly sales trends
- Monitor inventory movement
- Analyze beginning vs ending inventory
- Identify fast and slow moving products
- Optimize purchasing decisions
- Improve inventory planning

---

#  Tech Stack

| Technology | Purpose |
|------------|----------|
| Python | Data Cleaning & Transformation |
| Pandas | Data Processing |
| NumPy | Data Manipulation |
| SQL Server | Data Exploration |
| SQL | Business Queries |
| Power BI | Dashboard Development |
| DAX | KPI Calculations |
| Power Query | Data Transformation |

---

#  Dataset Information

This project uses **6 datasets**.

| Dataset | Description |
|----------|-------------|
| Sales | Sales Transactions |
| Purchases | Purchase Transactions |
| Purchase Prices | Product Purchase Prices |
| Vendor Invoice | Vendor Payment Information |
| Begin Inventory | Opening Inventory |
| End Inventory | Closing Inventory |

---

#  Python Data Cleaning & Transformation

Python was used to clean and preprocess the raw datasets before importing them into SQL Server.

### Data Cleaning Steps

✔ Removed duplicate records

✔ Removed null values

✔ Standardized column names

✔ Converted data types

✔ Parsed date columns

✔ Fixed inconsistent values

✔ Checked data quality

✔ Exported cleaned datasets

Libraries Used

```python
Pandas
NumPy
```

---

#  SQL Data Analysis

The cleaned datasets were imported into SQL Server.

Several SQL queries and Views were created for business analysis.

Examples include:

- Vendor Revenue
- Vendor Profitability
- Monthly Revenue
- Store Revenue
- Inventory Analysis
- Fast Moving Products
- Slow Moving Products
- Vendor Ranking
- Brand Performance
- Purchase Cost Analysis

SQL Views were created to improve dashboard performance and simplify reporting.

---

#  Power BI Dashboard

The Power BI report consists of **3 interactive dashboard pages**.

---

# Dashboard 1 — Sales Analysis

### KPIs

- Total Revenue
- Total Gross Value
- Total Orders
- Total Quantity Sold

### Visuals

- Top Vendors by Revenue
- Revenue by Store
- Monthly Revenue Trend
- Revenue vs Units Sold
- Interactive Filters
- Sales Transaction Table

### Business Insights

- Identify best-performing vendors
- Analyze monthly revenue growth
- Compare store performance
- Analyze revenue by brand

---

#  Dashboard 2 — Inventory Analysis

### KPIs

- Opening Stock Quantity
- Closing Stock Quantity
- Beginning Stock Value
- Ending Stock Value
- Total SKUs

### Visuals

- On-Hand Inventory by Store
- Inventory vs Units Sold
- Inventory by Sales Quantity
- Revenue vs Inventory by Brand
- Geographic Distribution of Inventory

### Business Insights

- Monitor inventory movement
- Detect overstock situations
- Analyze inventory value
- Compare beginning and ending inventory

---

#  Dashboard 3 — Vendor Performance

### KPIs

- Vendor Revenue
- Vendor Profit
- Purchase Cost
- Vendor Ranking

### Visuals

- Vendor Revenue
- Vendor Profitability
- Vendor Payments
- Purchase Cost Analysis
- Vendor Ranking

### Business Insights

- Compare vendor performance
- Identify high-value vendors
- Optimize purchasing decisions

---

#  Dashboard Screenshots

## Sales Analysis Dashboard

Replace the link below after uploading the image.

```md
![Sales Dashboard](images/sales_dashboard.png)
```

---

## Inventory Analysis Dashboard

```md
![Inventory Dashboard](images/inventory_dashboard.png)
```

---

## Vendor Performance Dashboard

```md
![Vendor Dashboard](images/vendor_dashboard.png)
```

---

#  Repository Structure

```
Vendor-Performance-Dashboard
│
├── Dataset
│   ├── sales.csv
│   ├── purchases.csv
│   ├── purchase_prices.csv
│   ├── vendor_invoice.csv
│   ├── begin_inventory.csv
│   └── end_inventory.csv
│
├── Python
│   ├── Data Cleaning.ipynb
│   └── Data Cleaning.py
│
├── SQL
│   ├── VendorPerformance.sql
│   ├── SQL Views.sql
│   └── Data Exploration.sql
│
├── Power BI
│   └── Vendor Performance Dashboard.pbix
│
├── Images
│   ├── sales_dashboard.png
│   ├── inventory_dashboard.png
│   └── vendor_dashboard.png
│
├── README.md
└── LICENSE
```

---

#  How to Run the Project

## Step 1

Clone the repository

```bash
git clone https://github.com/yourusername/Vendor-Performance-Dashboard.git
```

---

## Step 2

Run the Python notebook

```
Python/Data Cleaning.ipynb
```

---

## Step 3

Import cleaned CSV files into SQL Server.

---

## Step 4

Execute all SQL scripts inside

```
SQL/
```

---

## Step 5

Open

```
Vendor Performance Dashboard.pbix
```

using Power BI Desktop.

---

#  Key Business Insights

- Top vendors contribute a significant portion of overall revenue.
- Inventory is unevenly distributed across stores.
- Certain products remain overstocked for extended periods.
- Monthly sales exhibit seasonal fluctuations.
- Some vendors generate high revenue but lower profitability due to higher purchasing costs.
- Geographic visualization highlights inventory concentration across regions.

---

#  Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- SQL
- SQL Views
- Power BI
- Power Query
- DAX
- Data Modeling
- Dashboard Design
- Business Intelligence
- Inventory Analytics
- Vendor Performance Analysis

---



