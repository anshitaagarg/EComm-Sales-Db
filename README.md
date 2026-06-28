# 🛒 E-Commerce Sales Database | SQL Analysis Project

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?logo=mysql)
![SQL](https://img.shields.io/badge/SQL-Database-orange)
![Status](https://img.shields.io/badge/Project-Completed-success)

## 📌 Project Overview

This project was developed as part of the **Celebal Technologies Summer Internship 2026 (Week 2 Assignment)**.

The objective was to design and analyze an **E-Commerce Sales Database** using MySQL while applying core relational database concepts, SQL queries, aggregations, joins, indexing, transactions, and database optimization techniques.

The project simulates a real-world e-commerce platform named **ShopEase**, consisting of customers, products, orders, and order items.

---

# 🎯 Objectives

* Design a normalized relational database.
* Implement Primary Keys and Foreign Keys.
* Enforce data integrity using SQL constraints.
* Perform filtering and aggregation.
* Analyze sales data using SQL.
* Perform JOIN operations across multiple tables.
* Understand indexing and query optimization.
* Apply transaction management and ACID principles.

---

# 🗄 Database Schema

The database contains four relational tables:

| Table       | Description                             |
| ----------- | --------------------------------------- |
| Customers   | Stores customer information             |
| Products    | Stores product catalog                  |
| Orders      | Stores customer orders                  |
| Order_Items | Stores products purchased in each order |

### Relationships

```
Customers
     │
     │ customer_id
     ▼
Orders
     │
     │ order_id
     ▼
Order_Items
     ▲
     │ product_id
Products
```

---

# 🛠 Tech Stack

* MySQL Community Server
* MySQL Workbench
* SQL (DDL, DML, DQL)
* Git
* GitHub

---

# 📂 Project Structure

```
E-Commerce-Sales-Database/
│
├── README.md
│
├── sql/
│   ├── schema.sql
│   ├── insert_data.sql
│   └── queries.sql
│
├── outputs/
│   ├── Section_A.md
│   ├── Section_B.md
│   ├── Section_C.md
│   ├── Section_D.md
│   └── Section_E.md
│
└── screenshots/
```

---

# 🚀 Setup Instructions

### 1. Clone the repository

```bash
git clone <repository-url>
```

### 2. Create the database

```sql
CREATE DATABASE shopease_db;
USE shopease_db;
```

### 3. Execute

Run the following files in order:

```
sql/schema.sql
```

↓

```
sql/insert_data.sql
```

↓

```
sql/queries.sql
```

---

# 📚 Assignment Sections

## Section A

* Basic SELECT Queries
* DISTINCT
* Constraints
* Primary Keys
* UNIQUE
* CHECK

---

## Section B

* WHERE
* BETWEEN
* Filtering
* Indexes
* Query Optimization
* SARGable Queries

---

## Section C

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()
* GROUP BY
* HAVING
* ORDER BY

---

## Section D

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* Multi-table JOINs
* Foreign Keys
* Referential Integrity

---

## Section E

* CASE Statements
* Conditional Aggregation
* Transactions
* COMMIT
* ROLLBACK
* ACID Properties

---

# 💡 Business Insights

Throughout the project, SQL was used to answer practical business questions such as:

* Total revenue from delivered orders.
* Product pricing analysis.
* Customer purchasing patterns.
* Order status reporting.
* Category-wise sales insights.
* Product price segmentation.
* Customer order history.

---

# 📈 Key SQL Concepts Demonstrated

* Database Design
* Data Definition Language (DDL)
* Data Manipulation Language (DML)
* Data Query Language (DQL)
* Constraints
* Indexing
* Aggregate Functions
* Joins
* Transactions
* Query Optimization

---

# 🎓 Learning Outcomes

Through this project, I gained practical experience in:

* Designing relational databases
* Writing optimized SQL queries
* Using aggregate functions for business analytics
* Working with multi-table JOIN operations
* Implementing constraints and indexes
* Understanding transaction management
* Applying ACID principles
* Documenting SQL projects professionally

---

# 👩‍💻 Author

**Anshita Garg**

B.Tech (AI & ML)

GitHub: https://github.com/anshitaagarg

---

## ⭐ If you found this project useful, consider giving it a star.
