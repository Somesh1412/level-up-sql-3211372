-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT Customers.CustomerID, FirstName, LastName, Email, count(OrderID) as OrderCount 
FROM Customers JOIN Orders 
ON Customers.CustomerID=Orders.CustomerID
GROUP BY Orders.CustomerID
ORDER BY OrderCount DESC 
LIMIT 6;