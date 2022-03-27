
{{ config(materialized='table') }}

select to_date(date,'mm/dd/yyyy') as date,location,sum(Total_Deaths) as Total_Deaths,sum(Total_Active_Cases) as Total_Active_Cases,
sum(Total_Recovered) as Total_Recovered,sum(Total_Cases)  as Total_Cases ,sum(Total_Regencies) as Total_Regencies,
sum(Total_Cities) as Total_Cities,	sum(Total_Districts) as Total_Districts,sum(Total_Urban_Villages)asTotal_Urban_Villages
from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_ANKIT_AGGARWAL 
group by date,location