-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

select * from Customers
where Email = 'smac@kinetecoinc.com';

insert into Customers 
  (FirstName,LastName, Email)
  values ('Sam', 'Adams','smac@kinetecoinc.com');

insert into Reservations (CustomerID, Date, Partysize)
values (
  (select CustomerID 
  from Customers 
  where Email = 'smac@kinetecoinc.com'),
  '2022-08-12 18:00:00',
  5
);