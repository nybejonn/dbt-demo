{{
    config(
        materialized='table'
    )
}}

select 
    c.CUSTOMERNAME, count(distinct o.ORDERID) as order_count
from 
    GLOBALMART.ORDERS as o join GLOBALMART.CUSTOMER as c 
on 
    o.CUSTOMERID = c.CUSTOMERID
group by c.CUSTOMERNAME order by 1