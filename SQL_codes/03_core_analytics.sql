-- Total KPIs
SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders;


-- Sales by Region
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM orders
GROUP BY region
ORDER BY total_sales DESC;

-- Customer Segment Performance
SELECT
    segment,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM orders
GROUP BY segment
ORDER BY total_profit DESC;

-- Category & Sub-Category Analysis
SELECT
    category,
    sub_category,
    SUM(sales) AS sales,
    SUM(profit) AS profit
FROM orders
GROUP BY category, sub_category
ORDER BY profit DESC;

-- Montly Sales Trend
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS monthly_sales,
    SUM(profit) AS monthly_profit
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;