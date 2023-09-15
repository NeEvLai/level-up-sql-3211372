-- Generate a list of customer information.

-- Show their first name, last name, and email address.
-- Sort the list of results by last name.

select LastName, FirstName, Email
from Customers
order by LastName;