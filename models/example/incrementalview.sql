{{config(materialized='incremental',unique_key ='date_day', schema='Rajshri')}}

select
    Id as Id,
    ORDER_DATE as date_day,
    Name,
    status    
 from  "VWE_DATABASE"."PUBLIC"."Demo"

{% if is_incremental() %}
  -- this filter will only be applied on an incremental run

  where date_day >= (select max(date_day) from {{ this }})

{% endif %}
