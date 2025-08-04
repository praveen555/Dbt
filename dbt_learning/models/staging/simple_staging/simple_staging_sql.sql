SELECT  year_id
,productline
,SUM(quantityordered) AS YearQty
FROM {{ source('dbt_wh', 'sales') }}
GROUP BY year_id,productline
ORDER BY year_id DESC
