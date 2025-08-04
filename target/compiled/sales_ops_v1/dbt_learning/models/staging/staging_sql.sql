SELECT  year_id
,SUM(quamtityordered) AS YearQty
FROM "dbt_wh"."public"."sales"
ORDER BY year DESC