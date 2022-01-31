with payments as (
    select orderid, amount / 100 as amount
    from `dbt-tutorial.stripe.payment`
)

select * from payments