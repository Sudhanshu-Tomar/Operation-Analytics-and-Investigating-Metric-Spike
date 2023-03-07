-- Task 1 :
-- Number of jobs reviewed: Amount of jobs reviewed over time.

--  Your task: Calculate the number of jobs reviewed per hour per day for November 2020?

SELECT
COUNT(job_id) AS jobs_reviewed,
DATE(ds) as date
FROM job_data
WHERE DATE(ds) BETWEEN '2020-11-01' AND '2020-11-30'
GROUP BY date ;




-- Task 2 :
-- Throughput: It is the no. of events happening per second.

-- Your task: Let’s say the above metric is called throughput. Calculate 7 day rolling average of throughput? 
 -- For throughput, do you prefer daily metric or 7-day rolling and why?

SELECT
event ,
weekofyear(ds) AS weeks ,
count(*) AS frequency
from job_data
group by 1,2;




-- Task 3 :
--  Percentage share of each language: Share of each language for different contents.

-- Your task: Calculate the percentage share of each language in the last 30 days?

select
language ,
CONCAT(ROUND((count(*)/30)*100,2),"%") as percentage_share

from job_data
group by 1 ;



-- Task 4 :
-- Duplicate rows: Rows that have the same value present in them.

-- Your task: Let’s say you see some duplicate rows in the data. How will you display duplicates from the table?

with result as
(
select
* ,
row_number() over (partition by ds,job_id,actor_id,event,language,time_spent,org)
as num
from
job_data
)
select ds,job_id,actor_id,event,language,time_spent,org from result

where num>1 ;









--  Case Study 2 (Investigating metric spike)


--  Task 1 :
--   User Engagement: To measure the activeness of a user. Measuring if the user finds quality in a product/service.

-- Your task: Calculate the weekly user engagement?

select weekofyear(created_at) as weekly ,
count(user_id) as num_users from users where state = 'active'
group by 1 ;




-- Task 2 :
-- User Growth: Amount of users growing over time for a product.

-- Your task: Calculate the user growth for product?

SELECT
DATE(u.created_at) AS date, e.event_name ,
COUNT(DISTINCT(u.user_id)) AS user_count
FROM
users u
JOIN events e ON u.user_id = e.user_id
WHERE
u.state = 'active'
GROUP BY 1,2
ORDER BY
date ASC;





-- Task 3 :
-- Weekly Retention: Users getting retained weekly after signing-up for a product.

--  Your task: Calculate the weekly retention of users-sign up cohort?

select weekofyear(u.created_at) as week , count(e.user_id) as user_retained
from users u
left join
events e
on
u.user_id =e.user_id
where u.state = 'active'
group by 1
order by 1;




-- Task 4 :

-- Weekly Engagement: To measure the activeness of a user. Measuring if the user finds quality in a product/service weekly.

-- Your task: Calculate the weekly engagement per device?

select weekofyear(u.created_at) as weekly , e.device , count(u.user_id) as users
from events e
right join
users u
on
e.user_id = u.user_id
where e.event_type = 'engagement'
group by 1,2
order by 1; 





-- Task 5 :

-- Email Engagement: Users engaging with the email service.

-- Your task: Calculate the email engagement metrics?

SELECT u.user_id ,
count(case when ee.action = 'sent_weekly_digest' then 1 else null end) as
num_sent_weekly_digest ,
count(case when ee.action = 'email_open' then 1 else null end) as num_email_open ,
count(case when ee.action = 'email_clickthrough' then 1 else null end) as
num_email_clickthrough ,
count(case when ee.action = 'sent_reengagement_email' then 1 else null end) as
num_sent_reengagement_email
FROM users u
left join
email_events ee
on
u.user_id = ee.user_id
group by 1 ;





select action , count(user_id) as num_times_used
from email_events
group by 1 ;


