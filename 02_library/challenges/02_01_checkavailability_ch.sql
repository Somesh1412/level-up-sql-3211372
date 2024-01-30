-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT count(Title) 
FROM Books WHERE Title='Dracula';

SELECT LoanID, PatronID, BookID, LoanDate, ReturnedDate
FROM Loans WHERE BookID IN (12, 60, 73)
ORDER BY ReturnedDate;

SELECT count(Books.Title)
FROM Books JOIN Loans on Books.BookID=loans.BookID
WHERE Books.Title='Dracula' 
AND Loans.ReturnedDate IS NULL;

SELECT (SELECT count(Title) 
FROM Books WHERE Title='Dracula') - 
(SELECT count(Books.Title)
FROM Books JOIN Loans 
on Books.BookID=loans.BookID
WHERE Books.Title='Dracula' 
AND Loans.ReturnedDate IS NULL) 
as Available_copies;

