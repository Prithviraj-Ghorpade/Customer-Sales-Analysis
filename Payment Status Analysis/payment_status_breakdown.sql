/*How Many Payments Were Completed, Pending, Or Failed*/
SELECT payment_status, COUNT(*) AS number_of_payments
FROM payments
GROUP BY payment_status;
