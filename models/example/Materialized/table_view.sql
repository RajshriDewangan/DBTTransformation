{{config(materialized='table',schema='Rajshri')}}

select

    date_trunc('day', ORDER_DATE) as date_day,
    count(distinct ORDER_ID) as total_orders,
   count(distinct CUSTOMER_ID) as daily_users

 from  VWE_DATABASE.PUBLIC.REVIEW_NEW
group by 1