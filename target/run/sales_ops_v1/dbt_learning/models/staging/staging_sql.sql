
  create view "dbt_wh"."public"."staging_sql__dbt_tmp"
    
    
  as (
    SELECT  year_id
,SUM(quamtityordered) AS YearQty
FROM "dbt_wh"."public"."sales"
ORDER BY year DESC
  );