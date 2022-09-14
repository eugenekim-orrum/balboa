
  create or replace  view BALBOA_STAGING.bay_observability.credits_by_warehouse
  
    
    
(
  
    
      START_TIME
    
    , 
  
    
      CREDITS_USED
    
    , 
  
    
      WAREHOUSE_NAME
    
    
  
)

  copy grants as (
    select
    start_time,
    credits_used,
    warehouse_name
from
    BALBOA_STAGING.bay_observability.stg_warehouse_metering_history
where
    datediff(month, start_time, current_date) >= 1
  );