select od.orderNumber, o.orderDate, c.customerName, sum(od.quantityOrdered * od.priceEach) as grandTotal

from orderdetails od
inner join orders o on od.orderNumber = o.orderNumber
inner join customers c on o.customerNumber = c.customerNumber

group by od.orderNumber

order by grandTotal desc
limit 1

/*
	Order of execution:
    1. FROM + JOIN
    2. GROUP BY
    3. SELECT
    4. ORDER BY
    5. LIMIT
*/