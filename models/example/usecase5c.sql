{{
  config(
    post_hook=[
      "CREATE OR REPLACE TABLE VWE_DATABASE.PUBLIC.usecase_5 AS
       select * from  VWE_DATABASE.PUBLIC.PREMIUM_CUSTOMER ",

       "alter table VWE_DATABASE.PUBLIC.usecase_5 add CATEGORY varchar(90)",
 
      "update VWE_DATABASE.PUBLIC.usecase_5
       set CATEGORY='Gold'
       where TENURE_IN_MONTHS<=69",
 
      "update VWE_DATABASE.PUBLIC.usecase_5
       set CATEGORY='Sliver'
       where TENURE_IN_MONTHS<=38",
 
       "update VWE_DATABASE.PUBLIC.usecase_5 
       set CATEGORY='Bronze'
       where TENURE_IN_MONTHS<=15"
    ],
)
}}

select * from VWE_DATABASE.PUBLIC.PREMIUM_CUSTOMER