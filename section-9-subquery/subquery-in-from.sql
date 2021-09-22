-- subqery in from with alias
SELECT name,
    p.price_weight_ratio
FROM (
        SELECT name,
            price / weight as price_weight_ratio
        FROM products
    ) as p
WHERE p.price_weight_ratio > 5;
-- subquery
SELECT AVG(p.order_count)
FROM (
        SELECT user_id,
            COUNT(*) as order_count
        FROM orders
        GROUP BY user_id
    ) as p;
-- example find max_avg
select MAX(p.average_price) as max_average_price
from (
        select AVG(price) as average_price
        from phones
        group by manufacturer
    ) as p;