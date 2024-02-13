# Bookstore Management System

This is a simple bookstore management system designed using SQL. It includes tables for authors, books, customers, orders, and order details. Below is an explanation of the database schema and sample data.

## Database Schema

### Authors Table
- `AuthorID` (Primary Key)
- `AuthorName`

### Books Table
- `BookID` (Primary Key)
- `Title`
- `ISBN` (Unique)
- `AuthorID` (Foreign Key referencing Authors)
- `Price`
- `StockQuantity`

### Customers Table
- `CustomerID` (Primary Key)
- `FirstName`
- `LastName`
- `Email` (Unique)

### Orders Table
- `OrderID` (Primary Key)
- `CustomerID` (Foreign Key referencing Customers)
- `OrderDate`

### OrderDetails Table
- `OrderDetailID` (Primary Key)
- `OrderID` (Foreign Key referencing Orders)
- `BookID` (Foreign Key referencing Books)
- `Quantity`
- `TotalPrice`

## Sample Data

Sample data has been inserted to illustrate the functionality of the system. This includes authors, books, customers, orders, and order details.

## Queries

### Query 1 - Retrieve the list of top-selling books:

```sql
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
LIMIT 10;
```


Title                             | AuthorName           | TotalSold
----------------------------------|----------------------|-----------
Harry Potter and the Sorcerer     | J.K. Rowling         | 3
A Game of Thrones                 | George R.R. Martin   | 2
Pride and Prejudice               | Jane Austen          | 1


### Query 2 - Calculate total sales revenue for a given period:
```sql
SELECT 
    SUM(od.TotalPrice) AS TotalRevenue
FROM 
    Orders o
JOIN 
    OrderDetails od ON o.OrderID = od.OrderID
WHERE 
    o.OrderDate >= '2024-01-01' AND o.OrderDate < '2024-02-17';
```
TotalRevenue                    
-------------
149.94


Github Link: https://github.com/yashmangal112/SQL-Book-Management

