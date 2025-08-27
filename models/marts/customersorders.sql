select 
c.customerid,
sum(o.amount) as total_amount
from {{ ref('customerdata') }} as c 
inner join {{ ref('orderdata') }} as o 
on c.customerid=o.customerid
group by c.customerid