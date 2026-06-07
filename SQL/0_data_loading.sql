CREATE DATABASE retail_analytics;

USE retail_analytics;
CREATE TABLE retail (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(10,2),
    CustomerID BIGINT,
    Country VARCHAR(100),
    Revenue DECIMAL(12,2)
);

