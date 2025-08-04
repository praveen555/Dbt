 -- simple Business intelligence query

 SELECT
year_id As Year
,month_id AS Month
,qtr_id AS Quarter
,productline
,productcode
,quantityordered
,priceeach * quantityordered AS ValueUsd
,customername
,country
,CASE WHEN quantityordered <=10 THEN 'Small'
      WHEN quantityordered >10 AND quantityordered <50 THEN 'Medium'
      ELSE 'Large'
      END
      AS DealSize
FROM {{ source('dbt_wh', 'sales') }}
