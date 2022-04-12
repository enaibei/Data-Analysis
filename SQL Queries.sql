CREATE TABLE supermarket_sales (
    Invoice_ID VARCHAR(11),
    Branch VARCHAR(1),
    Country VARCHAR(8),
    Customer_type VARCHAR(6),
    Gender VARCHAR(6),
    Product_line VARCHAR(22),
    Unit_price NUMERIC(4,2),
    Quantity INT,
    Tax_5 NUMERIC(6, 4),
    Total NUMERIC(8, 4),
    Date DATETIME,
    Time VARCHAR(5),
    Payment VARCHAR(11),
    cogs NUMERIC(5, 2),
    gross_margin_percentage NUMERIC(10, 9),
    gross_income NUMERIC(6, 4),
    Rating NUMERIC(3, 1)
);