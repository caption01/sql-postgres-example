-- normaly query
SELECT first_name
FROM users
    JOIN orders on orders.user_id = users.id
WHERE orders.product_id = 3;
-- subquery join exmaple 
SELECT first_name
FROM users
    JOIN (
        SELECT user_id
        FROM orders
        WHERE product_id = 3
    ) as o on o.user_id = users.id;