select
    EMPID as employee_id,
    SKILLTAG as skill_tag,
    SELF_RATED_LEVEL as skill_level,
    LASTUPDATEDDATE as last_updated_date
from {{ source('raw', 'HR_TALENT_SKILLS') }}
