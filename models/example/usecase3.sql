{{ config(materialized='table') }}

select sum(Sales_Amount($)) as Total_Sales_Amount , sum(QUANTITY) as Total_Quantity from WHOLESALE2 group by CUSTOMER_NAME
