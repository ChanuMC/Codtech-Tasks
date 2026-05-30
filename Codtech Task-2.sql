/* =====================================================
   TASK 2 : DATA ANALYSIS WITH COMPLEX QUERIES
   Objective:
   Use Subqueries, CTEs and Window Functions
   for advanced business analysis.
   ===================================================== */

/* Create Sales Table */

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    sale_date DATE,
    amount DECIMAL(10,2)
);

/* Insert Sample Sales Data */

INSERT INTO Sales VALUES
(1,'Laptop','2025-01-01',50000),
(2,'Laptop','2025-01-05',55000),
(3,'Mobile','2025-01-06',20000),
(4,'Laptop','2025-01-10',60000),
(5,'Mobile','2025-01-15',25000),
(6,'Tablet','2025-01-18',30000);

/* =====================================================
   SUBQUERY
   Find sales greater than average sale amount
   ===================================================== */

SELECT *
FROM Sales
WHERE amount >
(
    SELECT AVG(amount)
    FROM Sales
);

/* =====================================================
   CTE (Common Table Expression)
   Calculate total sales per product
   ===================================================== */

WITH ProductSales AS
(
    SELECT
        product_name,
        SUM(amount) AS total_sales
    FROM Sales
    GROUP BY product_name
)

SELECT *
FROM ProductSales
ORDER BY total_sales DESC;

/* =====================================================
   WINDOW FUNCTION
   Rank sales amounts from highest to lowest
   ===================================================== */

SELECT
    product_name,
    amount,

    RANK() OVER
    (
        ORDER BY amount DESC
    ) AS Sales_Rank

FROM Sales;

/* =====================================================
   RUNNING TOTAL ANALYSIS
   Calculates cumulative sales over time
   ===================================================== */

SELECT
    sale_date,
    amount,

    SUM(amount) OVER
    (
        ORDER BY sale_date
    ) AS Running_Total

FROM Sales;

/* =====================================================
   MONTHLY SALES REPORT
   Useful for trend analysis
   ===================================================== */

SELECT
    TO_CHAR(sale_date, 'Month') AS Month_Name,
    SUM(amount) AS Total_Sales
FROM Sales
GROUP BY TO_CHAR(sale_date, 'Month')
ORDER BY Month_Name;