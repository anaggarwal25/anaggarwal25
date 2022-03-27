

{{ config(materialized='table') }}

select to_date(date,'mm/dd/yyyy') as date,location,sum(New_Deaths) as New_Deaths,sum(new_cases) as new_cases,
sum(new_Recovered) as new_Recovered,sum(new_active_cases)  as new_active_cases 
from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_ANKIT_AGGARWAL 
group by date,location