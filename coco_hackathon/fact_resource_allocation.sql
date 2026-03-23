select
    rp.plan_id,
    rp.employee_id,
    rp.project_code,
    rp.allocated_percent,
    rp.valid_from_date,
    rp.valid_to_date,
    rp.is_billable,
    e.department,
    e.office_location,
    p.project_title,
    p.project_category,
    p.client_name
from {{ ref('stg_resource_plans') }} rp
inner join {{ ref('dim_employee') }} e
    on rp.employee_id = e.employee_id
inner join {{ ref('dim_project') }} p
    on rp.project_code = p.project_code
