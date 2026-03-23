select distinct
    skill_tag as skill_name
from {{ ref('stg_skills') }}
