
  create view "dbt_wh"."dbt_learnings"."staging_sql__dbt_tmp"
    
    
  as (
    SELECT *
FROM "dbt_wh"."public"."sales"
  );