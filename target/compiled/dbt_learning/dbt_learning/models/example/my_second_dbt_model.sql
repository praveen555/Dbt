-- Use the `ref` function to select from other models

select *
from "userstest"."dbt_learnings"."my_first_dbt_model"
where id = 1