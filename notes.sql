-- This file is intended for notes
-- and for demonstrating how to work
-- with SQLite in Codespaces.

-- These two statements operate on the 
-- restaurant.db SQLite database.
SELECT * FROM Dishes;
SELECT * FROM Customers;

update Customers
set Phone = '555-555-1212'
where CustomerID=101;

delete from Reservations
where ReservationID = 2001;