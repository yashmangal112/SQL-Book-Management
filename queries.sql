-- 1. Retrieve the list of top-selling books: 
SELECT 
    b.Title,
    a.AuthorName,
    SUM(od.Quantity) AS TotalSold
FROM 
    Books b
JOIN 
    OrderDetails od ON b.BookID = od.BookID
JOIN 
    Authors a ON b.AuthorID = a.AuthorID
GROUP BY 
    b.Title, a.AuthorName
ORDER BY 
    TotalSold DESC
LIMIT 10; -- Adjust the limit based on your definition of "top-selling"


-- 2. Calculate total sales revenue for a given period (let's say for the month of January 2024):

SELECT 
    SUM(od.TotalPrice) AS TotalRevenue
FROM 
    Orders o
JOIN 
    OrderDetails od ON o.OrderID = od.OrderID
WHERE 
    o.OrderDate >= '2024-01-01' AND o.OrderDate < '2024-02-17';

