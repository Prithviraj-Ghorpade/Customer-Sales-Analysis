/*Number of customers made repeated purchases in subsequent months*/
SELECT strftime('%Y-%m', o.order_date) AS order_month, COUNT(DISTINCT o.customer_id) AS active_customers
FROM customer_orders o
JOIN payments p ON p.order_id = o.order_id
WHERE p.payment_status = 'completed'
GROUP BY order_month
ORDER BY order_month;
