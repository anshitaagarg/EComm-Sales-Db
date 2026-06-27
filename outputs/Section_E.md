# Section E – Advanced Concepts (CASE, ACID, Transactions)

---

## Q24. Write a query using CASE to classify products into price tiers.

### Objective

Classify products into Budget, Mid-Range, and Premium categories based on their unit price.

### Original SQL Query

```sql
SELECT product_name,
       unit_price,
       CASE
           WHEN unit_price < 1000 THEN 'Budget'
           WHEN unit_price BETWEEN 1000 AND 3000 THEN 'Mid-Range'
           ELSE 'Premium'
       END AS price_tier
FROM products;
```

### Explanation

- `CASE` applies conditional logic to each row.
- Products are classified as Budget, Mid-Range, or Premium based on `unit_price`.
- `END AS price_tier` creates a descriptive output column.

### Business Insight

Price tier classification helps businesses segment products for pricing strategies, inventory management, and targeted promotions.

## Q25. Using the `orders` table, display the total number of Delivered orders and Non-Delivered orders in a single query using `CASE`.

### Objective

Count Delivered and Non-Delivered orders in a single query using conditional aggregation.

### Original SQL Query

```sql
SELECT
    SUM(CASE
            WHEN status = 'Delivered' THEN 1
            ELSE 0
        END) AS delivered_orders,

    SUM(CASE
            WHEN status <> 'Delivered' THEN 1
            ELSE 0
        END) AS non_delivered_orders
FROM orders;
```

### Explanation

- `CASE` evaluates the status of each order.
- Delivered orders contribute `1` to the `delivered_orders` count.
- Non-delivered orders contribute `1` to the `non_delivered_orders` count.
- `SUM()` adds these values to produce the final counts in a single query.

### Business Insight

Conditional aggregation allows multiple business metrics to be calculated efficiently in a single query. Comparing delivered and non-delivered orders helps businesses monitor fulfillment performance and improve operational efficiency.

## Q26. Explain the purpose of `START TRANSACTION`, `COMMIT`, and `ROLLBACK`. Provide a simple example using the `orders` table.

### Objective

Understand how transactions ensure data consistency by treating multiple SQL operations as a single unit of work.

### Example SQL

```sql
START TRANSACTION;

UPDATE orders
SET status = 'Delivered'
WHERE order_id = 1007;

UPDATE orders
SET total_amount = 1399.00
WHERE order_id = 1007;

COMMIT;
-- If an error occurs before COMMIT:
-- ROLLBACK;
```

### Explanation

- `START TRANSACTION` begins a transaction.
- `UPDATE` statements make changes that remain temporary until committed.
- `COMMIT` permanently saves all changes.
- `ROLLBACK` cancels all uncommitted changes and restores the database to its previous state.

### Business Insight

Transactions ensure that related database operations are completed successfully as a single unit. This prevents inconsistent data and is essential in applications such as e-commerce, banking, and inventory management.

## Q27. Explain the four ACID properties of database transactions. Give a practical example related to an e-commerce order.

### Objective

Understand the ACID properties that ensure database transactions are reliable, consistent, and fault-tolerant.

### Original SQL Query

Not applicable. This is a theoretical question.

### Optimized SQL Query

Not applicable.

### Explanation

The four ACID properties are:

- **Atomicity:** A transaction is treated as a single unit of work. Either all operations succeed or none are applied.
- **Consistency:** A transaction maintains database integrity by ensuring all constraints and relationships remain valid.
- **Isolation:** Multiple transactions execute independently without affecting one another.
- **Durability:** Once a transaction is committed, its changes are permanently stored, even if the system crashes.

**Example:** During an online purchase, updating inventory, processing payment, and creating an order should all succeed together. If payment fails, the transaction is rolled back to prevent inconsistent data.

### Business Insight

ACID properties are fundamental to reliable database systems. They ensure that business transactions remain accurate, prevent data corruption, and maintain customer trust in applications such as e-commerce, banking, and inventory management.
---