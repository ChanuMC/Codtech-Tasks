/* =====================================================
CODTECH SQL INTERNSHIP

TASK 3 : DATABASE MIGRATION

Objective:
Migrate customer data from PostgreSQL
to MySQL and ensure data integrity.

Tools Used:

* PostgreSQL
* MySQL
* CSV Export/Import

===================================================== */

---

 -- SOURCE DATABASE : POSTGRESQL

/* Create Customer Table */

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
city VARCHAR(50)
);

/* Insert Sample Data */

INSERT INTO customers VALUES
(1,'John','New York'),
(2,'Emma','London'),
(3,'Sophia','Delhi'),
(4,'Michael','Mumbai'),
(5,'Olivia','Paris');

/* Verify Source Data */

SELECT * FROM customers;

/* Count Records Before Migration */

SELECT COUNT(*) AS Source_Record_Count
FROM customers;

---

 -- EXPORT DATA TO CSV

COPY customers
TO 'C:/migration/customers.csv'
DELIMITER ','
CSV HEADER;

/*
The customer data is now exported from PostgreSQL
into a CSV file for migration.
*/

---

