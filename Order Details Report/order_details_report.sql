/*Order Details Report*/
SELECT o.customer_id, o.order_id, p.payment_id, o.order_status, o.order_date, p.payment_date, 
CASE 
    WHEN JULIANDAY(p.payment_date) > JULIANDAY(o.order_date)
    THEN JULIANDAY(p.payment_date) - JULIANDAY(o.order_date)
    ELSE NULL
END AS days_to_payment,
o.order_amount, p.payment_amount, p.payment_method, 
CASE 
	WHEN p.payment_status = 'completed' THEN 'Paid'
	WHEN p.payment_status = 'pending' THEN 'Pending'
	WHEN p.payment_status = 'failed' THEN 'Failed'
	ELSE 'Unknown'
END AS payment_status_label
FROM customer_orders o
LEFT JOIN payments p 
ON o.order_id = p.order_id;
