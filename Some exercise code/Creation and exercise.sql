create table users 
(email varchar(255) primary key, created_at timestamp default now()); 

select date_format(created_at, '%M %D %Y')as earliest_date
from users
order by created_at asc
limit 1;

Select email from users
where created_at = (select min(created_at) from users);

select date_format(created_at, '%M') as month, 
    count(*) as count
from users
group by month
order by count desc;

select count(*) as yahoo_users from users
where email like '%@yahoo.com';

