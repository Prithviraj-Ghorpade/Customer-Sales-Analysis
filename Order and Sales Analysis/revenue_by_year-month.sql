SELECT strftime('%Y-%m', order_date) AS order_yearmonth, SUM(order_amount) AS total_revenue
FROM customer_orders
WHERE order_status = 'delivered'
GROUP BY order_yearmonth
ORDER BY order_yearmonth;