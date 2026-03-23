select
    PLANID as plan_id,
    EMPID as employee_id,
    PROJECTCODE as project_code,
    ALLOCATEDPERCENT as allocated_percent,
    VALIDFROMDATE as valid_from_date,
    VALIDTODATE as valid_to_date,
    BILLABLEFLAG as is_billable
from {{ source('raw', 'PM_RESOURCE_PLANNING') }}
