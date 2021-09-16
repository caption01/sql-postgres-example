-- 4 item highest price and price / weight ratio
(
    SELECT *
    FROM products
    order BY price DESC
    LIMIT 4
)
UNION
(
    SELECT *
    FROM products
    order BY price / weight DESC
    LIMIT 4
);
-- use union all if dont want sql duplicate data
-- intersec item
(
    SELECT *
    FROM products
    order BY price DESC
    LIMIT 4
)
INTERSECT
(
    SELECT *
    FROM products
    order BY price / weight DESC
    LIMIT 4
);
-- except item on left query  (order query has impact result)
(
    SELECT *
    FROM products
    order BY price DESC
    LIMIT 4
)
EXCEPT (
        SELECT *
        FROM products
        order BY price / weight DESC
        LIMIT 4
    );