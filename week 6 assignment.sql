SELECT e.firstName, e.lastName, e.email, o.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;



SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;


SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM orders o
RIGHT JOIN customers c ON o.customerNumber = c.customerNumber
LIMIT 10;