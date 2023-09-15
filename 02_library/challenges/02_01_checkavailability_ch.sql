-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select * from Books
where Title like '%Dracula%';

SELECT
  (select count(Title) -- total number of copies
    from Books
    where Title = 'Dracula') -
  (select count(B.Title) -- not returned copies
    from Loans L
    inner join Books B
    on L.BookID = B.BookID
    where B.Title = 'Dracula'
    and L.ReturnedDate is null) 
as AvailableCopies;