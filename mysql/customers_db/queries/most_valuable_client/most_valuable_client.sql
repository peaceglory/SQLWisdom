# Find the top three most valuable clients (who has spent the most)
select o.customerNumber, c.customerName, sum(od.quantityOrdered * od.priceEach) as totalSpent

from orders o
inner join orderdetails od on o.orderNumber = od.orderNumber
inner join customers c on o.customerNumber = c.customerNumber

where o.status = 'Shipped'

group by o.customerNumber

order by totalSpent desc
limit 3