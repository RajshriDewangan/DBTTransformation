{{ config(materialized='table') }}

select sum(Sales_Amount($)) , sum(QUANTITY) from WHOLESALE2 group by CUSTOMER_NAME
