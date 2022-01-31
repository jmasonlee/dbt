with orders as (
    select * from {{ref("stg_orders")}}
),

payments as (
    select * from {{ref("stg_payments")}}
),

fct_orders as (
    select o.order_id, o.customer_id, p.amount
    from orders o
    join  
    payments p on o.order_id = p.orderid
)

select * from fct_orders