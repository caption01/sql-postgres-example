-- query with where and having
select photo_id,
    count(*) as num_of_photo
FROM comments
WHERE photo_id < 3
GROUP BY photo_id
HAVING COUNT(*) > 2;
-- query with where and having
select user_id
FROM COMMENTS
WHERE photo_id <= 50
group BY user_id
HAVING count(*) >= 20;