{{ config(materialized='table') }}
select * from VWE_DATABASE.PUBLIC.REVIEW_NEW where RATING = 3 
