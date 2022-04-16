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








