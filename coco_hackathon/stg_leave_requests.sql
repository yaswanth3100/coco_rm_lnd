select
    REQUESTID as request_id,
    EMPID as employee_id,
    ABSENCEDATE as absence_date,
    ABSENCEREASON as absence_reason,
    DEDUCTEDHOURS as deducted_hours,
    STATE as leave_state
from {{ source('raw', 'HR_LEAVE_REQUESTS') }}
