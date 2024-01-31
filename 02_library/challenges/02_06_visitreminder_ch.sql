-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT FirstName, Email, COUNT(Loans.LoanID) AS BOOK_COUNT
FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
WHERE ReturnedDate IS NOT NULL
GROUP BY Loans.PatronID
ORDER BY BOOK_COUNT
LIMIT 5;
