select
    project_code,
    project_title,
    project_category,
    project_status,
    client_name
from {{ ref('stg_projects') }}
