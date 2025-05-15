-- Consulta de las tablas

SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM offices;
SELECT * FROM orders;
SELECT * FROM orderdetails;
SELECT * FROM payments;
SELECT * FROM productlines;
SELECT * FROM products;

-- JOINS para ordenes por cliente
SELECT *
FROM customers
JOIN orders 
ON customers.customerNumber = orders.customerNumber
JOIN orderdetails 
ON orders.orderNumber = orderdetails.orderNumber
JOIN products 
ON orderdetails.productCode = products.productCode;


