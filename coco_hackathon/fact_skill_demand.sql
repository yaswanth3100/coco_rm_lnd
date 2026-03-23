select
    s.employee_id,
    s.skill_tag as skill_name,
    s.skill_level,
    s.last_updated_date,
    e.first_name,
    e.last_name,
    e.department,
    e.office_location,
    sk.skill_name as dim_skill_ref
from {{ ref('stg_skills') }} s
inner join {{ ref('dim_employee') }} e
    on s.employee_id = e.employee_id
inner join {{ ref('dim_skill') }} sk
    on s.skill_tag = sk.skill_name
