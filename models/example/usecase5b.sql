{{ config(schema='DBT_RDEWANGAN',materialized='table') }}

--select * from PREMIUM_CUSTOMER where MEMBERS = 'Premium' 
select * from PREMIUM_CUSTOMER where MEMBERS = 'Non Premium' 
