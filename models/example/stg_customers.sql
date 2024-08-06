{{
    config(
        materialized= 'table',
        transient = true
    )
}}

With stg_customers AS (
    SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) as customer_name,
      email as email_address,
      address as billing_address
    FROM `naveen-dbt-project.dbt_naveen.Customer`
)

Select * from stg_customers