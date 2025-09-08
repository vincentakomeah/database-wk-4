-- Query 1: Get the total payment amount for each payment date
-- Groups all payments by paymentDate, sums the amount for each date,
-- sorts the results from latest to earliest, and shows only the top 5 latest dates.
SELECT 
    paymentDate, 
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Query 2: Get the average credit limit of customers
-- Groups customers by customerName and country, then calculates the average credit limit for each group.
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- Query 3: Calculate the total price for each product in orderdetails
-- Multiplies quantityOrdered by priceEach to get total price per row,
-- grouped by productCode, quantityOrdered, and priceEach.
SELECT 
    productCode, 
    quantityOrdered, 
    (quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered, priceEach;

-- Query 4: Find the highest payment amount for each check number
-- Groups payments by checkNumber and selects the maximum amount for each check.
SELECT 
    checkNumber, 
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
