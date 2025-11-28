# 📊 Sales Analytics SQL Project

This project focuses on analyzing product sales using SQL.  
It includes dataset creation, data insertion, and multiple analytical queries to generate insights about revenue, customer behavior, and product performance.


## 🔧 Tools & Technologies
- MySQL / SQL
- Data analysis with aggregate functions
- Joins, Grouping, Filtering


## 📁 Project Structure

| File | Description |
|------|-------------|
| `sales_analytics.sql` | Full SQL script containing database creation, table schema, sample data & analysis queries |


## 📂 Database Schema

**Tables included:**
- `products(product_id, product_name, category, price)`
- `customers(customer_id, customer_name, city, gender, age)`
- `sales(sale_id, product_id, customer_id, quantity, sale_date)`


## 🔍 Business Questions Answered

| Analysis | Query |
|---------|--------|
| Total revenue per product | `SUM(quantity * price)` |
| Revenue by category | Revenue grouped by product category |
| City spending comparison | Which city generated the highest sales |
| Gender-based spending | Who spends more – Male or Female |
| Age group segmentation | 18-24, 25-34, 35+ spending patterns |


