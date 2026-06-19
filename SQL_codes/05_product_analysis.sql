SELECT
    product_id,
    product_name,
    SUM(profit) AS total_profit
FROM orders
GROUP BY product_id, product_name
ORDER BY total_profit DESC
LIMIT 10;


-- Loss-Making Products
SELECT
    product_id,
    product_name,
    SUM(profit) AS total_profit
FROM orders
GROUP BY product_id, product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;