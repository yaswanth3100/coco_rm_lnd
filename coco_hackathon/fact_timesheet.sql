select
    ts.timesheet_entry_id,
    ts.employee_id,
    ts.project_code,
    ts.entry_date,
    ts.week_commencing,
    ts.hours_logged,
    ts.is_billable,
    ts.approval_status,
    e.department,
    e.office_location,
    p.project_title,
    p.project_category,
    p.client_name
from {{ ref('stg_timesheets') }} ts
inner join {{ ref('dim_employee') }} e
    on ts.employee_id = e.employee_id
inner join {{ ref('dim_project') }} p
    on ts.project_code = p.project_code
inner join {{ ref('dim_date') }} d
    on ts.entry_date = d.date_day
