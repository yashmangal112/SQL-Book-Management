-- Insert sample data into Authors table
INSERT INTO Authors (AuthorID, AuthorName) VALUES
(1, 'J.K. Rowling'),
(2, 'George R.R. Martin'),
(3, 'Jane Austen');

-- Insert sample data into Books table
INSERT INTO Books (BookID, Title, ISBN, AuthorID, Price, StockQuantity) VALUES
(1, 'Harry Potter and the Sorcerer', '978-0-7475-3269-6', 1, 24.99, 100),
(2, 'A Game of Thrones', '978-0-553-57340-4', 2, 29.99, 80),
(3, 'Pride and Prejudice', '978-0-19-953556-9', 3, 14.99, 120);


-- Insert sample data into Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email) VALUES
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Jane', 'Smith', 'jane.smith@example.com');

-- Insert sample data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(101, 1, '2024-02-10'),
(102, 2, '2024-02-11');

-- Insert sample data into OrderDetails table
INSERT INTO OrderDetails (OrderDetailID, OrderID, BookID, Quantity, TotalPrice) VALUES
(1, 101, 1, 3, 74.97),
(2, 101, 2, 2, 59.98),
(3, 102, 3, 1, 14.99);