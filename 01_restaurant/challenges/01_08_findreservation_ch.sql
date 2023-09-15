-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select 
  R.ReservationID, 
  R.Date, 
  R.PartySize, 
  C.LastName, 
  C.FirstName
from Reservations R
inner join Customers C
on R.CustomerID = C.CustomerID
where C.LastName like 'St%'
and R.PartySize = 4
order by R.Date desc;