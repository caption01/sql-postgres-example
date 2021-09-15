-- join table with handle missing data
select url,
    user_id
from photos
    left join users on users.id = photos.user_id;
-- left join 
-- right join 
-- outer join