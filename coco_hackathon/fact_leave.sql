select
    lr.request_id,
    lr.employee_id,
    lr.absence_date,
    lr.absence_reason,
    lr.deducted_hours,
    lr.leave_state,
    e.department,
    e.office_location
from {{ ref('stg_leave_requests') }} lr
inner join {{ ref('dim_employee') }} e
    on lr.employee_id = e.employee_id
inner join {{ ref('dim_date') }} d
    on lr.absence_date = d.date_day
