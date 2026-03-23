with date_spine as (
    select dateadd(day, seq4(), '2025-01-01')::date as date_day
    from table(generator(rowcount => 730))
)

select
    date_day,
    year(date_day) as year_num,
    quarter(date_day) as quarter_num,
    month(date_day) as month_num,
    monthname(date_day) as month_name,
    weekofyear(date_day) as week_of_year,
    dayofweek(date_day) as day_of_week,
    dayname(date_day) as day_name,
    case when dayofweek(date_day) in (0, 6) then false else true end as is_weekday
from date_spine
