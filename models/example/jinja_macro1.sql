select CUSTOMER_NAME ,GENDER, {{multiplyby10('RATING') }} as Ratings from VWE_DATABASE.PUBLIC.REVIEW_NEW