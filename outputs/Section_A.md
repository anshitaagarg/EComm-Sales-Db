# Section A – SQL Basics (SELECT, Constraints, Primary Keys)

---

## Q1. Display all columns and rows from the customers table.

### Objective

Retrieve all customer records along with every available column from the `customers` table to understand the dataset.

### Original SQL Query

```sql
SELECT *
FROM customers;
```

```sql
SELECT *
FROM customers;
```

### Explanation

* `SELECT *` retrieves all columns from the table.
* `FROM customers` specifies the table from which the data will be retrieved.
* Since no filtering condition is applied, every record in the table is displayed.

### Business Insight

This query provides a complete overview of the customer database and is commonly used during initial data exploration before performing filtering or analysis.

---

## Q2. Retrieve only the first_name, last_name, and city of all customers.

### Objective

Display only the customer name and city information instead of retrieving every column.

### Original SQL Query

```sql
SELECT first_name,
       last_name,
       city
FROM customers;
```

```sql
SELECT first_name,
       last_name,
       city
FROM customers;
```

### Explanation

* `SELECT` specifies only the required columns.
* Retrieving fewer columns reduces unnecessary data transfer and improves readability.
* `FROM customers` specifies the source table.

### Business Insight

Selecting only relevant columns produces cleaner reports and improves efficiency, especially when working with large datasets.

---

## Q3. List all unique categories available in the products table.

### Objective

Identify all distinct product categories available in the inventory.

### Original SQL Query

```sql
SELECT DISTINCT category
FROM products;
```

### Explanation

* `DISTINCT` removes duplicate values.
* Only one occurrence of each category is returned.
* `FROM products` specifies the source table.

### Business Insight

Knowing the available product categories helps understand the product portfolio and supports category-based sales and inventory analysis.

---

## Q4. Identify the Primary Key of each table. Explain why a Primary Key must be UNIQUE and NOT NULL.

### Objective

Understand how each table uniquely identifies its records and why Primary Keys are essential in relational databases.

### Explanation

Primary Keys for each table are:

| Table       | Primary Key |
| ----------- | ----------- |
| customers   | customer_id |
| products    | product_id  |
| orders      | order_id    |
| order_items | item_id     |

A Primary Key must be:

* **UNIQUE** to ensure every record has a distinct identity.
* **NOT NULL** so every record can always be identified.

These properties maintain data integrity and allow relationships between tables through Foreign Keys.

### Business Insight

Primary Keys prevent duplicate records and form the foundation for maintaining accurate relationships across multiple tables.

---

## Q5. What constraints are applied to the email column in the customers table? What would happen if you tried to insert a duplicate email?

### Objective

Understand how database constraints maintain data integrity and prevent duplicate customer records.

### Original SQL Query

```sql
INSERT INTO customers
VALUES
(109,
 'Rahul',
 'Verma',
 'aarav.s@email.com',
 'Lucknow',
 'Uttar Pradesh',
 '2024-09-01',
 FALSE);
```

### Explanation

The `email` column has the following constraints:

* `UNIQUE` prevents duplicate email addresses.
* `NOT NULL` ensures every customer provides an email address.

Executing the above query results in a **Duplicate Entry** error because the email address already exists in the database.

### Business Insight

Enforcing unique email addresses prevents duplicate customer accounts and ensures each customer can be uniquely identified for communication and authentication.

---

## Q6. Try inserting a product with unit_price = -50. What happens and which constraint prevents it?

### Objective

Understand how CHECK constraints prevent invalid data from being stored in the database.

### Original SQL Query

```sql
INSERT INTO products
VALUES
(209,
 'Test Product',
 'Electronics',
 'TestBrand',
 -50,
 100);
```

### Explanation

The insertion fails because the `products` table contains the constraint:

```sql
CHECK (unit_price > 0)
```

Since the value `-50` does not satisfy this condition, MySQL rejects the record and returns an error.

### Business Insight

CHECK constraints enforce business rules directly within the database, preventing invalid pricing information and maintaining the accuracy of inventory and financial data.

---