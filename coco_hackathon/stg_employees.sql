select
    EMPLOYEEID as employee_id,
    FIRSTNAME as first_name,
    LASTNAME as last_name,
    DEPARTMENT,
    DATEOFHIRE as date_of_hire,
    EMPLOYMENTSTATUS as employment_status,
    OFFICELOCATION as office_location
from {{ source('raw', 'HR_EMPLOYEE_MASTER') }}
