select min(date) as date,location, max(new_Recovered) as max_recovered from {{ ref('covid_sit_daily') }} group by location