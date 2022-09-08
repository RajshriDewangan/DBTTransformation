{{ config(materialized='table') }}

Select CHANNEL,count(IMPRESSIONS)as impressions, count(CLICKS) as clicks from
VWE_DATABASE.PUBLIC.MULTI_ATTRIBUTION_DATASET group by (CHANNEL)
