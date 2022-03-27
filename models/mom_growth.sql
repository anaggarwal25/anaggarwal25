with growth_per as (
select  to_char(date,'yyyy-mm')as month  ,sum(New_Deaths) as Deaths ,sum(new_cases) as new_cases,
sum(new_Recovered) as Recovered,sum(new_active_cases)  as active_cases
from {{ ref('covid_sit_daily') }} group by month )

select month,deaths,(Deaths::float / lag(Deaths) over (order by month) - 1) * 100 as death_growth_per,
Recovered ,(Recovered::float / lag(Recovered) over (order by month) - 1) * 100 as recovered_growth_per,
active_cases,(active_cases::float / lag(active_cases) over (order by month) - 1) * 100 as active_cases_growth_per

from growth_per 

order by month