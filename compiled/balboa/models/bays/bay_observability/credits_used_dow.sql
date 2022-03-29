select
    sum(credits_used) as credits_used,
    dayname(start_time) as day
from 
    
        BALBOA.bay_observability.stg_warehouse_metering_history
    

group by day
order by day