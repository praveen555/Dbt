Dbt Learnings: 

A repo consists my Dbt learnings. 


As usual with any tool the question always remains on why you want to use this tool. 
Using any specific tool does not replace the fact of why you want to analyze the data. 


Some key takeaways reading and understand various resources ( please not I have not worked with dbt at an enterprise level hence all of these points are my own viewpoints ) 

1. A lot similar to Airflow in terms of data lineage. While Airflow can schedule any job while dbt is suited for more SQL. 


2. Powerhouse in "Transformation" (in ETL). In Airflow you typically write out the task order giving a lot of control while Dbt would generate the DAG automatically. 


3. Extensive Jinja preferences sometimes can be hard to debug. 
compare 

```select
order_id,
sum(case when payment_method = 'bank_transfer' then amount end) as bank_transfer_amount,
sum(case when payment_method = 'credit_card' then amount end) as credit_card_amount,
sum(case when payment_method = 'gift_card' then amount end) as gift_card_amount,
sum(amount) as total_amount
from {{ ref('raw_payments') }}
group by 1
 ```

vs when jinja templated 

```
select
order_id,
{% for payment_method in ["bank_transfer", "credit_card", "gift_card"] %}
sum(case when payment_method = '{{payment_method}}' then amount end) as {{payment_method}}_amount,
{% endfor %}
sum(amount) as total_amount
from {{ ref('raw_payments') }}
group by 1 
```

imagine a complex query with several joins and windows functions. 

4. Project structure and configuring .yml would take away most of the time it seems. Seems also non intutive to run python based code 


