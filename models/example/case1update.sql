{{
    config(
        pre_hook = [
            "update VWE_DATABASE.PUBLIC.REVIEW_NEW 
            set REMARKS_BY_UNHAPPY_CUSTOMERS = 'Bad packaging' 
            where STATUS='Happy' and RATING = 4"
        ],)
}}

select * from VWE_DATABASE.PUBLIC.REVIEW_NEW

