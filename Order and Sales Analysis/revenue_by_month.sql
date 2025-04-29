SELECT strftime('%m', order_date) AS order_month, SUM(order_amount) AS total_revenue
FROM customer_orders
WHERE order_status = 'delivered'
GROUP BY order_month
ORDER BY order_month;