SELECT 
    payment_status,
    COUNT(*) AS number_of_payments
FROM 
    payments
GROUP BY 
    payment_status;
