select * from {{ ref('aggregate_orders') }} where order_count in (2,3,4,5)
union all
select 'badcustomer' as customername, 6 as order_count