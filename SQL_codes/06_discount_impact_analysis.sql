SELECT
    discount,
    AVG(sales) AS avg_sales,
    AVG(profit) AS avg_profit
FROM orders
GROUP BY discount
ORDER BY discount;