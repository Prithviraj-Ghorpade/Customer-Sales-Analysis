SELECT strftime('%Y', order_date) AS order_year, SUM(order_amount) AS total_revenue
FROM customer_orders
WHERE order_status = 'delivered'
GROUP BY order_year
ORDER BY order_year;