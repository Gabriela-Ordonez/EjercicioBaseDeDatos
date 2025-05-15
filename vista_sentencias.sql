CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `classicmodels`.`vista_sentencias` AS
    SELECT 
        `classicmodels`.`customers`.`customerNumber` AS `customerNumber`,
        `classicmodels`.`customers`.`customerName` AS `customerName`,
        `classicmodels`.`orders`.`orderNumber` AS `orderNumber`,
        `classicmodels`.`orders`.`orderDate` AS `orderDate`,
        `classicmodels`.`orders`.`status` AS `status`,
        `classicmodels`.`products`.`productCode` AS `productCode`,
        `classicmodels`.`products`.`productName` AS `productName`,
        `classicmodels`.`orderdetails`.`quantityOrdered` AS `quantityOrdered`,
        `classicmodels`.`orderdetails`.`priceEach` AS `priceEach`,
        (`classicmodels`.`orderdetails`.`quantityOrdered` * `classicmodels`.`orderdetails`.`priceEach`) AS `totalPrice`
    FROM
        (((`classicmodels`.`customers`
        JOIN `classicmodels`.`orders` ON ((`classicmodels`.`customers`.`customerNumber` = `classicmodels`.`orders`.`customerNumber`)))
        JOIN `classicmodels`.`orderdetails` ON ((`classicmodels`.`orders`.`orderNumber` = `classicmodels`.`orderdetails`.`orderNumber`)))
        JOIN `classicmodels`.`products` ON ((`classicmodels`.`orderdetails`.`productCode` = `classicmodels`.`products`.`productCode`)))