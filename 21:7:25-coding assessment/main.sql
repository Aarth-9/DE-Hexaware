CREATE database e_commerce;

use e_commerce;

-- total amount spent by each customer

SELECT c.CustomerName, SUM(t.TotalValue) AS TotalSpent
FROM transactions t
JOIN customers c ON t.CustomerID = c.CustomerID
GROUP BY c.CustomerName;

-- Transactions where total value > 500

SELECT TransactionID, CustomerID, TotalValue
FROM transactions
WHERE TotalValue > 500;

-- Total revenue by region

SELECT c.Region, ROUND(SUM(t.TotalValue),2) AS TotalRevenue
FROM transactions t
JOIN customers c ON t.CustomerID = c.CustomerID
GROUP BY c.Region
ORDER BY TotalRevenue DESC;

-- top 5 products

SELECT TOP 5 p.ProductName, ROUND(SUM(t.TotalValue), 2) AS TotalRevenue
FROM transactions t
JOIN products p ON t.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC;

-- transation date and time with all ids

SELECT TransactionID, CustomerID, ProductID,
    YEAR(TransactionDate) AS TransactionYear,
    MONTH(TransactionDate) AS TransactionMonth,
    FORMAT(TransactionDate, 'HH:mm:ss') AS TransactionTime
FROM transactions;

--all transations

SELECT t.TransactionID, c.CustomerName, c.Region, p.ProductName, p.Category, t.TransactionDate, t.Quantity, t.TotalValue
FROM transactions t
JOIN customers c ON t.CustomerID = c.CustomerID
JOIN products p ON t.ProductID = p.ProductID;
