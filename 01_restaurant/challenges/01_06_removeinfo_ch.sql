-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

select R.ReservationID,R.CustomerID, R.Date, C.FirstName
from Reservations R
inner join Customers C
on R.CustomerID = C.CustomerID
where C.FirstName = 'Norby'
and R.Date > '2022-07-24'
order by R.Date desc;

delete from Reservations
where ReservationID = 2000;

-- or
update Reservations set Date = NULL
where ReservationID = 2000;