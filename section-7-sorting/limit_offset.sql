SELECT *
FROM products
order BY price DESC
LIMIT 10 OFFSET 10;
-- FIRST PAGE
SELECT *
FROM products
order BY price DESC
LIMIT 10 OFFSET 0;
-- NEXT PAGE (size 10)
SELECT *
FROM products
order BY price DESC
LIMIT 10 OFFSET 10;