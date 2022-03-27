select max(date) as death_date,location,max(Total_Deaths_per_Million)  as death_rate_per_million
from {{ ref('stats') }} 
where location !='Indonesia'
group by location