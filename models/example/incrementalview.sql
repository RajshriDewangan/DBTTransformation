{{config(materialized='incremental', unique_key = 'Id')}}

select
    Id as Id,
    date_trunc('day', ORDER_DATE) as date_day,
    Name,
    status    
 from   VWE_DATABASE.PUBLIC.Demo

{% if is_incremental() %}
  -- this filter will only be applied on an incremental run

  where date_day >= (select max(date_day) from {{ this }})

{% endif %}
group by 1