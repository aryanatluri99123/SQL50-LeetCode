select ROW_NUMBER() over(order by if(mod(id,2)=0,id-1,id+1)) as id, student
from seat