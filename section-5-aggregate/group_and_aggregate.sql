-- grouping and use aggresgate
select user_id,
    COUNT(id) as num_comments_of_user
FROM COMMENTS
GROUP BY user_id;
--ex.2 grouping and use aggresgate
SELECT COUNT(photo_id) as number_of_photo
FROM comments
GROUP BY photo_id;
-- or count(*)
SELECT COUNT(*) as number_of_photo,
    photo_id
FROM comments
GROUP BY photo_id;