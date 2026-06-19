-- Check duplicates
SELECT order_id, product_id, COUNT(*)
FROM orders
GROUP BY order_id, product_id
HAVING COUNT(*) > 1;

-- Check nulls in critical fields
SELECT *
FROM orders
WHERE order_id IS NULL
   OR sales IS NULL
   OR profit IS NULL;

-- Basic row count
SELECT COUNT(*) AS total_rows FROM orders;