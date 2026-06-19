-- Top Customers
SELECT
    customer_id,
    customer_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM orders
GROUP BY customer_id, customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- Repeat Customers
SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(DISTINCT order_id) > 1
ORDER BY total_orders DESC;