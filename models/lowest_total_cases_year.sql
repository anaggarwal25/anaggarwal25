select extract(year from date ) as Year ,min(date) as date  ,location,min(total_cases) as min_case  
from
{{ ref('covid_sit_till_date') }} 
group by location,Year  order by Year
