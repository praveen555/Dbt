SELECT  year_id
,productline
,SUM(quantityordered) AS YearQty
FROM {{ source('dbt_wh', 'sales') }}
ORDER BY year DESC
