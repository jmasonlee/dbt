with payments as (
    select orderid, amount
    from `dbt-tutorial.stripe.payment`
)

select * from payments