# Find the number of the most expensive order.
select orderNumber, sum(quantityOrdered * priceEach) as GrandTotal
from orderdetails
group by orderNumber
order by GrandTotal desc
limit 1
