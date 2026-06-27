
-- ==========================================================
-- Celebal Summer Internship 2026
-- Week 2 Task: E-Commerce Sales Database
-- File: queries.sql
-- Description:
-- Contains SQL queries to retrieve and manipulate data from the ShopEase database.
-- Author: Anshita Garg
-- ==========================================================

USE shopease_db;

-- ==========================================================
-- Section A
-- ==========================================================

-- Q1
-- Display all columns and rows from the customers table.

SELECT *
FROM customers;

-- Q2
-- Retrieve only the first_name, last_name, and city of all customers.

SELECT first_name,
       last_name,
       city
FROM customers;

-- Q3
-- List all unique categories available in the products table.


SELECT DISTINCT category
FROM products;

-- Q4
-- Identify the Primary Key of each table. 
--(Theoretical Question - No SQL Query Required)

/*
Primary Keys:

customers    -> customer_id
products     -> product_id
orders       -> order_id
order_items  -> item_id
*/

-- Q5. UNIQUE constraint on the email column. 
-- (expected to fail because the email already exists.)

INSERT INTO customers
VALUES
(
    109,
    'Rahul',
    'Verma',
    'aarav.s@email.com',
    'Lucknow',
    'Uttar Pradesh',
    '2024-09-01',
    FALSE
);

-- Q6. CHECK constraint on unit_price. 
--(expected to fail because unit_price is negative.)

INSERT INTO products
VALUES
(
    209,
    'Test Product',
    'Electronics',
    'TestBrand',
    -50,
    100
);

-- ==========================================
-- SECTION B
-- ==========================================

-- Q7
-- Retrieve all delivered orders

SELECT *
FROM orders
WHERE status = 'Delivered';

-- Q8
-- Find Electronics products priced above ₹2000

SELECT *
FROM products
WHERE category = 'Electronics'
AND unit_price > 2000;

-- Q9
-- Customers from Maharashtra who joined in 2024

SELECT *
FROM customers
WHERE join_date BETWEEN '2024-01-01' AND '2024-12-31'
AND state = 'Maharashtra';

-- Q10
-- Orders between Aug 10 and Aug 25 excluding cancelled orders

SELECT *
FROM orders
WHERE order_date BETWEEN '2024-08-10' AND '2024-08-25'
AND status != 'Cancelled';

-- Q11
-- Query benefiting from idx_orders_date

SELECT *
FROM orders
WHERE order_date BETWEEN '2024-08-10' AND '2024-08-25';

-- Q12
-- SARGable Query
-- Non-SARGable Query
SELECT *
FROM customers
WHERE YEAR(join_date) = 2024;

-- Optimized SARGable Query
SELECT *
FROM customers
WHERE join_date BETWEEN '2024-01-01'
AND '2024-12-31';

-- ==========================================================
-- SECTION C – AGGREGATION
-- ==========================================================

-- Q13. Count the total number of orders in the orders table.

SELECT COUNT(*) AS total_orders
FROM orders;

-- Q14. Find the total revenue (SUM of total_amount)
-- from all Delivered orders.

SELECT SUM(total_amount) AS total_revenue
FROM orders
WHERE status = 'Delivered';

-- Q15. Calculate the average unit_price of products
-- in each category.

SELECT category,
       AVG(unit_price) AS average_price
FROM products
GROUP BY category;

-- Q16. Display the number of orders and total revenue
-- for each order status. Sort by revenue in descending order.

SELECT status,
       COUNT(*) AS total_orders,
       SUM(total_amount) AS total_revenue
FROM orders
GROUP BY status
ORDER BY total_revenue DESC;

-- Q17. Find the most expensive (MAX) and cheapest (MIN)
-- product in each category.

SELECT category,
       MAX(unit_price) AS most_expensive,
       MIN(unit_price) AS cheapest
FROM products
GROUP BY category;

-- Q18. Display categories where the average product price
-- is greater than ₹2000 using the HAVING clause.

SELECT category,
       AVG(unit_price) AS average_price
FROM products
GROUP BY category
HAVING AVG(unit_price) > 2000;