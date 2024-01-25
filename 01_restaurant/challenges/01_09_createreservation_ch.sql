-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
SELECT * FROM Customers WHERE FirstName='Sam' 
OR LastName='McAdams' OR Email='smac@kinetecoinc.com';

INSERT INTO Customers (FirstName,LastName, Email, Phone)
VALUES ('Sam', 'McAdams', 'smac@kinetecoinc.com', '555-555-1212');

INSERT INTO Reservations (CustomerID, Date, PartySize)
VALUES (102, '2022-08-12 18:00:00', 5)

SELECT r.ReservationID, r.CustomerID, c.FirstName, c.LastName,
r.Date, r.PartySize FROM Customers c JOIN Reservations r
ON c.CustomerID=r.CustomerID WHERE c.CustomerID=102;