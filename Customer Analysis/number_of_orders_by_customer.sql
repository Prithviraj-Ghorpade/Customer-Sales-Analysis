/*Shows Which Customers Have Made More Than One Order*/
SELECT customer_id, COUNT(order_id) AS number_of_orders
FROM customer_orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;
