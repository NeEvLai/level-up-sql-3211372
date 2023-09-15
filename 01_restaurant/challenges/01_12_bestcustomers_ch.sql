-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select
  C.FirstName,
  C.LastName,
  C.Email,
  count(O.CustomerID) as NumOfOrders
from Customers C
inner join Orders O
on C.CustomerID = O.CustomerID
group by C.LastName, C.FirstName
order by NumOfOrders desc;