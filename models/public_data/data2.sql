{{
    config(
        materialized='incremental',
        unique_key=['date','user_id','user_uid']
    )
}}
with source_data as (select * from fns.gethubspotmetrics('zinkee', date('2022-11-23')::DATE))

select *
from source_data
