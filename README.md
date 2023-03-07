# Operation-Analytics-and-Investigating-Metric-Spike 


![data-analysis](https://user-images.githubusercontent.com/119277783/223322053-e32e3f88-76ad-4840-b29a-fcf6197c5d72.gif)

# Description:

Operation Analytics is the analysis done for the complete end to end operations of a company. With the help of this, the company then finds the areas on which 
it must improve upon. You work closely with the ops team, support team, marketing team, etc and help them derive insights out of the data they collect.

Being one of the most important parts of a company, this kind of analysis is further used to predict the overall growth or decline of a company’s fortune. 
It means better automation, better understanding between cross-functional teams, and more effective workflows.

Investigating metric spike is also an important part of operation analytics as being a Data Analyst you must be able to understand or make other teams understand
questions like- Why is there a dip in daily engagement? Why have sales taken a dip? Etc. Questions like these must be answered daily and for that its very important 
to investigate metric spike.

You are working for a company like Microsoft designated as Data Analyst Lead and is provided with different data sets, tables from which you must derive certain 
insights out of it and answer the questions asked by different departments.



You are required to provide a detailed report for the below two operations mentioning the answers for the related questions:


# Case Study 1 (Job Data)

   - Below is the structure of the table with the definition of each column that you must work on:

- Table-1: job_data
   job_id: unique identifier of jobs
   actor_id: unique identifier of actor
   event: decision/skip/transfer
   language: language of the content
   time_spent: time spent to review the job in seconds
   org: organization of the actor
   ds: date in the yyyy/mm/dd format. It is stored in the form of text and we use presto to run. no need for date function
   
   
 - Use the dataset attached in the Dataset section below the project images then answer the questions that follows

- Number of jobs reviewed: Amount of jobs reviewed over time.

   - Your task: Calculate the number of jobs reviewed per hour per day for November 2020?

- Throughput: It is the no. of events happening per second.

   - Your task: Let’s say the above metric is called throughput. Calculate 7 day rolling average of throughput? For throughput, do you prefer 
      daily metric or 7-day rolling and why?
      
- Percentage share of each language: Share of each language for different contents.

   - Your task: Calculate the percentage share of each language in the last 30 days?

- Duplicate rows: Rows that have the same value present in them.

   - Your task: Let’s say you see some duplicate rows in the data. How will you display duplicates from the table?






#  Case Study 2 (Investigating metric spike)

- The structure of the table with the definition of each column that you must work on is present in the project image

Table-1: users
This table includes one row per user, with descriptive information about that user’s account.

Table-2: events
This table includes one row per event, where an event is an action that a user has taken. These events include login events, messaging events,
search events, events logged as users progress through a signup funnel, events around received emails.

Table-3: email_events
This table contains events specific to the sending of emails. It is similar in structure to the events table above.



-Use the dataset attached in the Dataset section below the project images then answer the questions that follows

- User Engagement: To measure the activeness of a user. Measuring if the user finds quality in a product/service.

  - Your task: Calculate the weekly user engagement?

- User Growth: Amount of users growing over time for a product.

  - Your task: Calculate the user growth for product?

- Weekly Retention: Users getting retained weekly after signing-up for a product.

  - Your task: Calculate the weekly retention of users-sign up cohort?

- Weekly Engagement: To measure the activeness of a user. Measuring if the user finds quality in a product/service weekly.

  - Your task: Calculate the weekly engagement per device?

- Email Engagement: Users engaging with the email service.

  - Your task: Calculate the email engagement metrics?




- Approach:

For the first case study, the number of jobs reviewed can be calculated by counting the number of rows in the job_data table. 
The number of jobs reviewed per hour per day for November 2020 can be calculated by filtering the job_data table for November 2020 and then aggregating the number
of jobs by hour and day. The throughput can be calculated by counting the number of events per second and then computing the 7-day rolling average of the throughput.
For the throughput metric,the 7-day rolling average is preferred because it helps to smooth out fluctuations in the data and
provides a clearer picture of the underlying trend. The percentage share of each language can becalculated by aggregating the number of jobs by language and 
then dividing each count by the total number of jobs. To display duplicates from the table, one can group the data by all columns and
then filter for groups with more than one row.For the second case study, the weekly user engagement can be calculated by aggregating the
number of events in the events table by week and user. The user growth for the product can be
calculated by counting the number of unique users in the users table over time. The weekly Operation Analytics and Investigating Metric Spike
retention of users-sign up cohort can be calculated by dividing the number of users who returnafter signing up by the number of users who signed up in a given week. 
The weekly engagement perdevice can be calculated by aggregating the number of events in the events table by week, device,
and user. The email engagement metrics can be calculated by aggregating the number of emailevents in the email_events table by week and user.


- Learning:

  - Conducted data analysis to provide insights to different departments by filtering, aggregating, and joining data as necessary, 
   including investigating metric spikes to understand dips in daily engagement or sales decline.
  - Utilized MYSQL to filter, aggregate, and join data from different tables to conduct analysis, developing queries to calculate metrics like
  number of jobs reviewed per hour per day for November 2020, percentage share of each language in the last 30 days, and weekly user engagement.
  - Demonstrated strong problem-solving skills, identifying the most appropriate approach to analyzing data based on the questions being asked, 
  using the 7-day rolling average to smooth out fluctuations in data, and displaying duplicate rows from the table with high attention to detail.







![5d9e354ca94780020a3df04fdb5b9b6e](https://user-images.githubusercontent.com/119277783/223327164-49776e04-bdb7-4fa0-91b3-8de4fa483ce3.gif)

