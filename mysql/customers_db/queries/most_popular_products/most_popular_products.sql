select od.productCode, sum(quantityOrdered) as totalOrdered

from orderdetails od

group by od.productCode

order by totalOrdered desc
limit 10