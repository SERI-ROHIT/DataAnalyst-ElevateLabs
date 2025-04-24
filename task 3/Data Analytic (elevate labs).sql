---- Top 5 highest value order---


SELECT order_id, total_amount
FROM order.orders_table
ORDER BY total_amount DESC
LIMIT 5;


-- Orders from customers in USA
SELECT o.order_id, c.name, o.total_amount
FROM order.orders_table o
JOIN customers_table c ON o.customer_id = c.customer_id
WHERE c.country = 'USA';


--- group by---
SELECT 
    o.order_date,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS daily_revenue
FROM order.orders_table o
GROUP BY o.order_date;



-- INNER JOIN: Order details with product names
SELECT 
    o.order_id, 
    p.product_name, 
    q.quantity, 
    q.price
FROM order_item.order_items_table q
INNER JOIN order.orders_table o ON q.order_id = o.order_id
INNER JOIN product.products_table p ON q.product_id = p.product_id;



--- left join----
SELECT c.name, o.order_id, o.total_amount
FROM customer_table.customers_table c
LEFT JOIN order.orders_table o ON c.customer_id = o.customer_id;

--- right join--
SELECT 
    p.product_id,
    p.product_name,
    oi.order_id,
    oi.quantity,
    oi.price
FROM product.products_table p
LEFT JOIN order_item.order_items_table oi ON p.product_id = oi.product_id;



-- subqueries--
-- Customers who spent more than the average
SELECT name, customer_id
FROM customer_table.customers_table
WHERE customer_id IN (
  SELECT customer_id
  FROM order.orders_table
  GROUP BY customer_id
  HAVING SUM(total_amount) > (
    SELECT AVG(total_amount)
    FROM order.orders_table
  )
);


--- aggregation in  sql--


-- total order by country --
SELECT c.country, COUNT(o.order_id) AS total_orders
FROM customer_table.customers_table c
JOIN order.orders_table o ON c.customer_id = o.customer_id
GROUP BY c.country;


-- average order  by value--

SELECT AVG(total_amount) AS avg_order_value
FROM order.orders_table;

-- number of items sold per oerder--
SELECT oi.order_id, SUM(oi.quantity) AS total_items
FROM order_item.order_items_table oi
GROUP BY oi.order_id;

-- View for customer order summary---

CREATE VIEW customer_order_summary AS
SELECT c.customer_id, c.name, COUNT(o.order_id) AS total_orders, SUM(o.total_amount) AS total_spent
FROM customer_table.customers_table c
JOIN order.orders_table o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;


-- Create index on foreign keys for performance
CREATE INDEX ind_orders_customer_id ON order.orders_table(customer_id);
CREATE INDEX ind_order_items_order_id ON order_item.order_items_table(order_id);






