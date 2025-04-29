SELECT * FROM online_sales.order;

-- a.Use EXTRACT(MONTH FROM order_date) for month.---

SELECT EXTRACT(MONTH FROM order_date) AS month
FROM online_sales.order;

-- Group by year and months --
SELECT EXTRACT(YEAR FROM order_date) AS year, 
       EXTRACT(MONTH FROM order_date) AS month
       
       
FROM online_sales.order
GROUP BY year, month;


-- calculate total revenue(sum)--
SELECT EXTRACT(YEAR FROM order_date) AS year, 
       EXTRACT(MONTH FROM order_date) AS month, 
       SUM(amount) AS total_revenue
FROM online_sales.order
GROUP BY year, month;


--- count distict order in each months--
SELECT EXTRACT(YEAR FROM order_date) AS year, 
       EXTRACT(MONTH FROM order_date) AS month, 
       COUNT(DISTINCT order_id) AS total_orders
FROM online_sales.order
GROUP BY year, month;

---Use ORDER BY for sorting.--

SELECT EXTRACT(YEAR FROM order_date) AS year, 
       EXTRACT(MONTH FROM order_date) AS month, 
       SUM(amount) AS total_revenue, 
       COUNT(DISTINCT order_id) AS total_orders
FROM online_sales.order
GROUP BY year, month
ORDER BY year, month;

---Show results only for 2024---
--- 3 months order ---
SELECT EXTRACT(YEAR FROM order_date) AS year, 
       EXTRACT(MONTH FROM order_date) AS month, 
       SUM(amount) AS total_revenue, 
       COUNT(DISTINCT order_id) AS total_orders
FROM online_sales.order
WHERE order_date BETWEEN '2024-01-01' AND '2024-03-01'
GROUP BY year, month
ORDER BY year, month;



