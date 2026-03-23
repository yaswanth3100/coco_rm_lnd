select
    PROJECTCODE as project_code,
    PROJECTTITLE as project_title,
    CATEGORY as project_category,
    CURRENTSTATUS as project_status,
    CLIENTNAME as client_name
from {{ source('raw', 'PM_PROJECTS_LIST') }}
