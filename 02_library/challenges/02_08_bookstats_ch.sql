-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
SELECT Published, COUNT(DISTINCT(Title)) as BookCount
FROM Books 
GROUP BY Published
ORDER BY BookCount DESC;
-- Report 2: Show the five books that have been
-- checked out the most.
SELECT Books.Title, Author, COUNT(LoanID) AS count
FROM Loans JOIN Books 
ON Loans.BookID=Books.BookID
GROUP BY Books.Title, Author
ORDER BY count DESC
LIMIT 5;