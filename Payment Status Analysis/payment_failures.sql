/*Which Payment Methods Are Failing More Often*/
SELECT payment_method, COUNT(*) AS failed_payments
FROM payments
WHERE payment_status = 'failed'
GROUP BY payment_method;
