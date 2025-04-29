/*Shows How many orders are pending, shipped, or delivered*/
SELECT order_status, COUNT(*) AS total_orders
FROM customer_orders
GROUP BY order_status;
