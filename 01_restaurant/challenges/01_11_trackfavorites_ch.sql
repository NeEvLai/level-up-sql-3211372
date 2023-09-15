-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

update Customers
set FavoriteDish = (
  select DishID
  from Dishes
  where Name = 'Quinoa Salmon Salad')
where FirstName = 'Cleo'
and Lastname = 'Goldwater';