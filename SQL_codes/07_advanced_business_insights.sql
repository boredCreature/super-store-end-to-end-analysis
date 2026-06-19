-- Profitability by Region + Category
SELECT
    region,
    category,
    SUM(sales) AS sales,
    SUM(profit) AS profit,
    (SUM(profit) / SUM(sales)) * 100 AS profit_margin
FROM orders
GROUP BY region, category
ORDER BY profit_margin DESC;


-- Shipping Mode Analysis
SELECT
    ship_mode,
    COUNT(*) AS total_orders,
    AVG(DATEDIFF(ship_date, order_date)) AS avg_shipping_days
FROM orders
GROUP BY ship_mode;

-- High-Level Business KPI table
SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(discount) AS avg_discount,
    (SUM(profit)/SUM(sales))*100 AS profit_margin
FROM orders;