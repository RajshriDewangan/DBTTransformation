{{config(materialized='incremental',unique_key ='Id', schema='Rajshri')}}
 
select
    Id,
    ORDER_DATE as date_day,
    Name,
    status    
 from  "VWE_DATABASE"."DBT_RDEW"."Demo"
 
{% if is_incremental() %}
  -- this filter will only be applied on an incremental run
 
  where date_day >= (select max(date_day) from {{ this }})
 
{% endif %}
