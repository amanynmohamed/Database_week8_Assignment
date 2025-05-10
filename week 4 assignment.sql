CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    payment_date DATE,
    amount DECIMAL(10,2),
    check_number VARCHAR(50)
);


SELECT 
    customer_name, 
    country, 
    AVG(credit_limit) AS average_credit_limit
FROM 
    customers
GROUP BY 
    customer_name, country;


    SELECT 
    productCode, 
    quantityOrdered, 
    SUM(quantityOrdered * priceEach) AS totalPrice
FROM 
    orderdetails
GROUP BY 
    productCode, quantityOrdered;


    SELECT check_number, MAX(amount) AS highest_payment
FROM payments
GROUP BY check_number;