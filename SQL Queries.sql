-- Query all rows and columns from the table
SELECT *
FROM supermarket_sales;

-- Query distinct rows from a table
SELECT * 
FROM supermarket_sales
WHERE country =  'kenya' AND gender = 'Female';

-- Selecting distinct values
SELECT DISTINCT 'Country'
FROM supermarket_sales;

-- Sort result in ascending order
SELECT product_line, Country, gross_income 
FROM supermarket_sales
ORDER BY gross_income ASC; -- Or DESC for Descending



-- SQL FUNCTIONS
SELECT MIN(gross_income)
FROM supermarket_sales
WHERE Country = 'Kenya' -- OR MAX for maximum value

SELECT COUNT(customer_id) 
FROM customer_details

SELECT SUM(Tax_5)
FROM supermarket_sales

SELECT AVG(gross_income)
FROM supermarket_sales



SELECT * 
FROM customer_details
WHERE Invoice IN (SELECT Invoice_id FROM supermarket_sales)
-- selects all customers whose invoice corresponds to invoice_id in supermarket sales

SELECT * 
FROM supermarket_sales
WHERE Country NOT IN ('Kenya')
-- selects all from supermarket sales whose country is not Kenya

SELECT Payment
FROM supermarket_sales
WHERE Total BETWEEN 200 AND 500
-- selects values within a given range

SELECT DISTINCT Payment
FROM supermarket_sales
-- selecting distinct values


-- SQL JOINS
SELECT *
FROM customer_details
INNER JOIN supermarket_sales
ON customer_details.Invoice = supermarket_sales.Invoice_ID
ORDER BY supermarket_sales.Country
-- INNER JOIN selects records that have matching values in both tables

SELECT customer_name
FROM customer_details
LEFT JOIN supermarket_sales
ON customer_details.Invoice = supermarket_sales.Invoice_ID;
-- The LEFT JOIN returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match

SELECT *
FROM customer_details
RIGHT JOIN supermarket_sales
ON customer_details.Invoice = supermarket_sales.Invoice_ID;
-- The RIGHT JOIN returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match

SELECT *
FROM customer_details
FULL OUTER JOIN supermarket_sales
ON customer_details.Invoice = supermarket_sales.Invoice_ID
WHERE Country = 'Kenya';
-- The FULL OUTER JOIN returns all records when there is a match in left (table1) or right (table2) table records

