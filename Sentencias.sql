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
SELECT 
	customers.customerNumber,
    customers.customerName,
    orders.orderNumber,
    orders.orderDate,
    orders.status,
    products.productCode,
    products.productName,
    orderdetails.quantityOrdered,
    orderdetails.priceEach,
    (orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
FROM customers
JOIN orders 
ON customers.customerNumber = orders.customerNumber
JOIN orderdetails 
ON orders.orderNumber = orderdetails.orderNumber
JOIN products 
ON orderdetails.productCode = products.productCode;


