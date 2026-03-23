select
    employee_id,
    first_name,
    last_name,
    department,
    date_of_hire,
    employment_status,
    office_location
from {{ ref('stg_employees') }}
