{{ config(materialized='table') }}
select REVIEW_NEW.CUSTOMER_NAME , REVIEW_NEW.REMARKS_BY_UNHAPPY_CUSTOMERS, ORDERS_NEW.CUSTOMER_SOURCE , ORDERS_NEW.PRODUCT_NAME , ORDERS_NEW.SUBSIDIARY_NAME
from REVIEW_NEW INNER JOIN ORDERS_NEW on REVIEW_NEW.ORDER_ID = ORDERS_NEW.ORDER_ID
