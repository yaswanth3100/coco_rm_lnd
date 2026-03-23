select
    TIMESHEETENTRYID as timesheet_entry_id,
    EMPID as employee_id,
    PROJECTCODE as project_code,
    WEEKCOMMENCING as week_commencing,
    ENTRYDATE as entry_date,
    HOURSLOGGED as hours_logged,
    BILLABLE as is_billable,
    MANAGERAPPROVALSTATUS as approval_status
from {{ source('raw', 'TS_WEEKLY_SUBMISSIONS') }}
