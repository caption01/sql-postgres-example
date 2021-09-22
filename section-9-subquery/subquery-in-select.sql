-- sub query
SELECT name,
    price
FROM products
WHERE price > (
        SELECT MAX(price)
        FROM products
        WHERE department = 'Toys'
    );
-- n row n col
SELECT *
FROM orders;
-- scalar
SELECT MAX(price)
FROM products;
-- example subquery rename
SELECT name,
    price,
    (
        SELECT price
        FROM products
        WHERE id = 3
    ) as price_id_3
FROM products
WHERE price > 867;
-- example 
SELECT name,
    price,
    price / (
        SELECT MAX(price)
        FROM products
    ) as price_ratio
FROM products;