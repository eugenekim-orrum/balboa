select *
from {{ source('loans', 'PERSONAL_LOANS') }}
limit 5
