select query_name, round(avg(rating/position),2) quality,
round(avg(if(rating <3,1,0)*100),2) poor_query_percentage
from queries
where query_name IS NOT NULL
group by query_name;