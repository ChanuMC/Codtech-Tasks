# SQL

**COMPANY**: CODTECH IT SOLUTIONS

**NAME**: CHANAKSH CHOUDHARI

**INTERN ID**: CTIS8782

**DOMAIN**: SQL

**DURATION: 6 WEEKS

**MENTOR**: NEELA SANTOSH KUMAR

### Task 1: Joins Practice

This task focuses on understanding and implementing different types of SQL joins to combine data from multiple related tables. The project demonstrates the use of **INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN** to retrieve meaningful information from employee and department datasets. Through these join operations, relationships between tables are analyzed, and the resulting outputs illustrate how SQL can be used to integrate and query data efficiently.

**Key Concepts Covered:**

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL OUTER JOIN (using UNION where applicable)
* Relational database querying
* Data retrieval from multiple tables

**Outcome:**
Successfully combined data from related tables and generated query outputs demonstrating the behavior and practical applications of different SQL join operations.

## Task 2: Data Analysis with Complex Queries

### Overview

This task focuses on performing advanced data analysis using SQL by utilizing **Subqueries, Common Table Expressions (CTEs), and Window Functions**. A sales dataset was created to analyze product performance and identify meaningful business trends.

### Implementation

A **Sales** table was created containing product names, sale dates, and sales amounts. Sample sales records were inserted to simulate real-world business transactions.

* **Subqueries** were used to identify sales records with amounts greater than the average sales value.
* **CTEs (Common Table Expressions)** were implemented to calculate total sales for each product and improve query readability.
* **Window Functions** such as `RANK()` were used to rank products based on sales performance.
* The `SUM() OVER()` function was used to calculate running totals, helping track cumulative sales over time.
* Aggregate functions were applied to generate summary reports and analyze sales trends.

### Outcome

The queries successfully extracted valuable insights from the sales data, including top-performing products, sales rankings, and cumulative sales growth. This task demonstrates how advanced SQL techniques can be used for efficient data analysis, reporting, and business decision-making.

### Key Concepts

* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* Ranking Functions
* Running Totals
* Sales Trend Analysis
* Data Reporting and Analytics

## Task 3: Database Migration

### Overview

This task demonstrates the process of migrating data from **PostgreSQL to MySQL** while ensuring data integrity and consistency. The objective was to transfer customer records from a source database to a target database using a structured migration approach.

### Implementation

A **Customers** table was created in PostgreSQL and populated with sample customer data. The data was then exported to a CSV file using PostgreSQL's export functionality. In the target MySQL database, an identical table structure was created to maintain compatibility with the source data.

The exported CSV file was imported into MySQL using the appropriate data import commands. After the migration process, validation queries were executed on both databases to compare record counts and verify that all data had been transferred successfully without any loss or corruption.

### Outcome

The migration was completed successfully, with all customer records accurately transferred from PostgreSQL to MySQL. Record count verification and data validation confirmed that the integrity of the data was maintained throughout the migration process.

### Key Concepts

* Database Migration
* PostgreSQL to MySQL Data Transfer
* CSV Export and Import
* Data Integrity Validation
* Schema Compatibility
* Record Verification
* Database Administration and Management

## Task 4: Database Backup and Recovery

### Overview

This task demonstrates the implementation of **database backup and recovery procedures** in PostgreSQL to ensure data availability and protection against data loss. The objective was to create a backup of the database and successfully restore it in the event of a failure.

### Implementation

A sample database containing employee records was created and populated with data. The database was then backed up using PostgreSQL's backup utility, generating a backup file that stored both the database schema and data. To simulate a failure scenario, the table was removed from the database. The backup file was subsequently used to restore the database, recreating the deleted table and recovering all records.

After restoration, verification queries were executed to confirm that the recovered data matched the original dataset. Record counts and table contents were checked to ensure the backup and recovery process was successful.

### Outcome

The database was successfully backed up and restored without any data loss. The recovery process demonstrated the importance of maintaining regular backups and validated the effectiveness of PostgreSQL's backup and restoration tools.

### Key Concepts

* Database Backup
* Database Recovery
* PostgreSQL Administration
* Data Protection
* Disaster Recovery
* Backup Validation
* Data Integrity Verification
* Database Management and Maintenance

