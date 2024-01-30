-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
SELECT * FROM Customers 
WHERE FirstName='Cleo' AND LastName='Goldwater';

UPDATE Customers 
SET FavoriteDish=(SELECT DishID FROM Dishes 
  where Name='Quinoa Salmon Salad')
WHERE CustomerID=(SELECT CustomerID FROM Customers 
  WHERE FirstName='Cleo' AND LastName='Goldwater');