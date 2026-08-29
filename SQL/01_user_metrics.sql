USE retail_analytics;

# Understanding the size, activity, and purchasing behavior of the customer base.

# 1. total customers 
SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM retail_features;                   # 4338

# 2. Total Orders
SELECT COUNT(DISTINCT InvoiceNo) AS TotalOrders
FROM retail_features;                    # 18532

# 3. Orders Per Customer
SELECT
ROUND(
COUNT(DISTINCT InvoiceNo)*1.0 /
COUNT(DISTINCT CustomerID)
,2) AS OrdersPerCustomer
FROM retail_features;                   # 4.27

# 4. Revenue Per Customer
SELECT
ROUND(
SUM(Revenue) /
COUNT(DISTINCT CustomerID)
,2) AS RevenuePerCustomer
FROM retail_features;                     # 2054.27

# 5. Average Order Value
SELECT
ROUND(AVG(order_value),2)
AS AvgOrderValue
FROM
(
SELECT
InvoiceNo,
SUM(Revenue) AS order_value
FROM retail_features
GROUP BY InvoiceNo
)t;                                       # 480.87


select round(sum(revenue)/count(distinct InvoiceNo),2)
from retail_features;

# 6. Top Active Customers OR Customer Purchase Frequency
SELECT
CustomerID,
COUNT(DISTINCT InvoiceNo) AS Orders
FROM retail_features
GROUP BY CustomerID
ORDER BY Orders DESC
LIMIT 20;

