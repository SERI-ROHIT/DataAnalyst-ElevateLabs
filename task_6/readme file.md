Sales Trend Analysis - SQL Project
📁 Dataset
File: online_sales.csv

Records: 200 rows

Columns:

order_id: Unique ID for each order

order_date: Date when the order was placed

amount: Total amount/revenue for the order

product_id: Product associated with the order

🎯 Objective
To analyze monthly revenue and order volume using SQL aggregation techniques.

🛠 Tools Used
PostgreSQL / MySQL / SQLite (any one can be used)

This project focused on analyzing monthly revenue and order volume from an e-commerce sales dataset using SQL. By working with the online_sales table (200 records), we practiced key SQL skills such as:

Extracting date parts using EXTRACT(MONTH/YEAR FROM order_date)

Grouping data by year and month to observe time-based trends

Aggregating revenue with SUM(amount)

Counting unique orders with COUNT(DISTINCT order_id)

Sorting results with ORDER BY year, month

Filtering data for specific periods like the year 2024

Overall, this task helped understand how to perform time-based sales trend analysis in SQL using simple yet powerful aggregation and grouping techniques.



