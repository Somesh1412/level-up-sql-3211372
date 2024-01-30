-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT * FROM Customers 
WHERE LastName='Hundey'; --CId=70

INSERT INTO Orders (CustomerID, OrderDate)
VALUES (70, CURRENT_TIMESTAMP);--1001

SELECT DishID from Dishes 
where Name='Mini Cheeseburgers' 
OR Name='House Salad' 
OR Name='Tropical Blue Smoothie';--4,7,20

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 4), (1001, 7), (1001, 20);

SELECT * FROM Dishes JOIN OrdersDishes 
ON Dishes.DishID=OrdersDishes.DishID 
where OrdersDishes.OrderID=1001;

SELECT Sum(Dishes.Price) FROM Dishes 
JOIN OrdersDishes 
ON Dishes.DishID=OrdersDishes.DishID 
where OrdersDishes.OrderID=1001;