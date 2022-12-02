
  create or replace  view BALBOA_STAGING.l1_account_usage.warehouse_metering_history
  
    
    
(
  
    "START_TIME" COMMENT $$$$, 
  
    "END_TIME" COMMENT $$$$, 
  
    "WAREHOUSE_ID" COMMENT $$$$, 
  
    "WAREHOUSE_NAME" COMMENT $$$$, 
  
    "CREDITS_USED" COMMENT $$$$, 
  
    "CREDITS_USED_COMPUTE" COMMENT $$$$, 
  
    "CREDITS_USED_CLOUD_SERVICES" COMMENT $$$$
  
)

  copy grants as (
    with raw_source as (

    select *
    from SNOWFLAKE.ACCOUNT_USAGE.WAREHOUSE_METERING_HISTORY

),

final as (

    select
        "START_TIME" as start_time,
        "END_TIME" as end_time,
        "WAREHOUSE_ID" as warehouse_id,
        "WAREHOUSE_NAME" as warehouse_name,
        "CREDITS_USED" as credits_used,
        "CREDITS_USED_COMPUTE" as credits_used_compute,
        "CREDITS_USED_CLOUD_SERVICES" as credits_used_cloud_services

    from raw_source

)


select * from final
  );
