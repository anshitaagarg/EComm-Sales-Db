# Section C — Aggregation

---

## Q13. Count the total number of orders in the `orders` table.

### Objective

Determine the total number of orders placed by customers.

### Original SQL Query

```sql
SELECT COUNT(*) AS total_orders
FROM orders;
```

### Explanation

* `COUNT(*)` counts every row in the table.
* Since each row in the `orders` table represents one order, the result gives the total number of orders.
* `AS total_orders` assigns a meaningful name to the output column.
* `FROM orders` specifies the source table.

### Business Insight

Counting the total number of orders provides a quick measure of business activity. It serves as a key performance indicator (KPI) for monitoring sales volume and forms the basis for calculating other business metrics such as average order value and customer purchase frequency.

## Q14. Find the total revenue (SUM of `total_amount`) from all 'Delivered' orders.

### Objective

Calculate the total revenue generated from successfully delivered orders.

### Original SQL Query

```sql
SELECT SUM(total_amount) AS total_revenue
FROM orders
WHERE status = 'Delivered';
```

### Explanation

* `SUM(total_amount)` adds all values in the `total_amount` column.
* `AS total_revenue` assigns a meaningful name to the output column.
* `FROM orders` specifies the source table.
* `WHERE status = 'Delivered'` ensures that only completed orders are included in the revenue calculation.

### Business Insight

Calculating revenue from delivered orders provides an accurate measure of realized sales. This metric is widely used for financial reporting, revenue analysis, and evaluating overall business performance while excluding cancelled or incomplete orders.

## Q15. Calculate the average `unit_price` of products in each category.

### Objective

Calculate the average selling price of products for each product category.

### Original SQL Query

```sql
SELECT category,
       AVG(unit_price) AS average_price
FROM products
GROUP BY category;
```

### Explanation

* `SELECT category` displays the category name.
* `AVG(unit_price)` calculates the average price of products within each category.
* `AS average_price` assigns a meaningful name to the calculated column.
* `FROM products` specifies the source table.
* `GROUP BY category` groups products belonging to the same category before computing the average.

### Business Insight

Average product price helps compare pricing strategies across different product categories. Such analysis supports pricing decisions, inventory planning, and identifying premium or budget-oriented product segments.

## Q16. Display the number of orders and total revenue for each order status. Sort the results by total revenue in descending order.

### Objective

Summarize the number of orders and total revenue for each order status while displaying the highest revenue category first.

### Original SQL Query

```sql
SELECT status,
       COUNT(*) AS total_orders,
       SUM(total_amount) AS total_revenue
FROM orders
GROUP BY status
ORDER BY total_revenue DESC;
```

### Explanation

- `SELECT status` displays each order status.
- `COUNT(*)` counts the number of orders in each status.
- `SUM(total_amount)` calculates the total revenue for each status.
- `GROUP BY status` groups orders according to their status before performing the calculations.
- `ORDER BY total_revenue DESC` sorts the summarized results from the highest revenue to the lowest.

### Business Insight

This report provides a quick overview of business performance by order status. It helps managers understand which order statuses contribute the most revenue, monitor fulfillment progress, and identify cancelled or pending orders that may require operational attention.

## Q17. Find the most expensive (MAX) and cheapest (MIN) product in each category.

### Objective

Determine the highest-priced and lowest-priced products within each product category.

### Original SQL Query

```sql
SELECT category,
       MAX(unit_price) AS most_expensive,
       MIN(unit_price) AS cheapest
FROM products
GROUP BY category;
```

### Optimized SQL Query

The original query is already optimized because it calculates both the maximum and minimum prices for each category in a single grouped query.

```sql
SELECT category,
       MAX(unit_price) AS most_expensive,
       MIN(unit_price) AS cheapest
FROM products
GROUP BY category;
```

### Explanation

* `SELECT category` displays each product category.
* `MAX(unit_price)` returns the highest product price in each category.
* `MIN(unit_price)` returns the lowest product price in each category.
* `AS most_expensive` and `AS cheapest` assign meaningful names to the calculated columns.
* `FROM products` specifies the source table.
* `GROUP BY category` groups products by category before calculating the aggregate values.

### Business Insight

Analyzing the minimum and maximum prices within each category helps businesses understand pricing ranges, identify premium and budget products, and make informed pricing and inventory decisions.

## Q18. Display categories where the average product price is greater than ₹2000 using the `HAVING` clause.

### Objective

Identify product categories whose average selling price exceeds ₹2000 using the `HAVING` clause.

### Original SQL Query

```sql
SELECT category,
       AVG(unit_price) AS average_price
FROM products
GROUP BY category
HAVING AVG(unit_price) > 2000;
```

### Optimized SQL Query

The original query is already optimized because it groups the data before filtering the aggregated results using the `HAVING` clause.

```sql
SELECT category,
       AVG(unit_price) AS average_price
FROM products
GROUP BY category
HAVING AVG(unit_price) > 2000;
```

### Explanation

- `SELECT category` displays each product category.
- `AVG(unit_price)` calculates the average price of products within each category.
- `GROUP BY category` groups products based on their category.
- `HAVING AVG(unit_price) > 2000` filters the grouped results and returns only those categories whose average product price exceeds ₹2000.

### Business Insight

Using the `HAVING` clause allows businesses to identify premium product categories based on their average selling price. This information supports pricing strategies, product positioning, and targeted marketing efforts.
---