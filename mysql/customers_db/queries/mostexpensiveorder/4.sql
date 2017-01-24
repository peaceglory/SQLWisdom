# Find the name of the customer who has made the most expensive order
select customers.customerName
from (	
	# Find the number of the customer who has made the most expensive order.
    select orders.* 
	from (
		# Find the number of the most expensive order
		select orderNumber, sum(quantityOrdered * priceEach) as GrandTotal
		from orderdetails
		group by orderNumber
		order by GrandTotal desc
		limit 1
	) tmp 
	inner join orders on tmp.orderNumber = orders.orderNumber
) final
inner join customers on final.customerNumber = customers.customerNumber    
