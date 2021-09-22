-- example subquery with correlate
SELECT name,
    department,
    price
FROM products as p1
WHERE p1.price = (
        SELECT MAX(price)
        FROM products as p2
        WHERE p2.department = p1.department
    );
-- example subquery with correlate without join
SELECT name,
    (
        SELECT COUNT(*)
        FROM orders as o1
        WHERE o1.product_id = p1.id
    ) as number_orders
FROM products as p1