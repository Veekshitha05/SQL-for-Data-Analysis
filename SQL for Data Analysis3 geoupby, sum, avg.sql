select GeoID, sum(Amount), avg(Amount)
from sales
group by GeoID;
