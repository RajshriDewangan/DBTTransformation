{{
    config(
        post_hook = [
            "update VWE_DATABASE.PUBLIC.REVIEW_NEW 
            set REMARKS_BY_UNHAPPY_CUSTOMERS = 'Bad packaging' 
            where STATUS='Happy' and RATING = 5"
        ],)
}}

select * from VWE_DATABASE.PUBLIC.REVIEW_NEW

