-- example
SELECT id as order_id
FROM orders
WHERE orders.product_id in (
        SELECT id
        FROM products
        WHERE price / weight > 50
    );
-- example with new operator
SELECT name,
    department,
    price
FROM products
WHERE price > ALL (
        SELECT price
        FROM products
        WHERE department = 'Industrial'
    );