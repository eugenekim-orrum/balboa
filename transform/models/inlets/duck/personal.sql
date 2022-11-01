select *
from {{ source('main', 'loans') }}
