{{ config(tags=['finance', 'daily'],
          pre_hook=["insert into for_dbt.dbt_audit (modelname) values ('B_Hosts');"],
          post_hook=["insert into for_dbt.dbt_audit (modelname) values ('B_Hosts');"]) }}

SELECT * FROM {{source('my_bronze','Hosts')}}
