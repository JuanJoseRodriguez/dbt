{{
    config(
        materialized='incremental',
        unique_key=['date','user_id','user_uid']
    )
}}
with source_data as (select * from fns.gethubspotmetrics('zinkee', now()::DATE))

select *
from source_data
