SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    o.Order_Date
FROM
    `naveen-dbt-project.dbt_naveen.Orders` o
JOIN
    {{ ref("stg_customers") }} c ON o.Customer_ID = c.Customer_ID
JOIN
    `naveen-dbt-project.dbt_naveen.Products` p ON o.Product_ID = p.Product_ID