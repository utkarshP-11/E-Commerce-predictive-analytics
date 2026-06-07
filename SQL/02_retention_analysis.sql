USE retail_analytics;

# Measuring repeat usage and customer retention.

# 1. Repeat Purchase Rate
WITH customer_orders AS
(
SELECT
CustomerID,
COUNT(DISTINCT InvoiceNo) AS orders
FROM retail_features
GROUP BY CustomerID
)

SELECT
ROUND(
SUM(CASE WHEN orders>1 THEN 1 ELSE 0 END)
*100.0/
COUNT(*)
,2) AS RepeatPurchaseRate
FROM customer_orders;                                  # 65.58

# 2. Monthly Active Customers
SELECT
Year,
Month,
COUNT(DISTINCT CustomerID) AS ActiveCustomers
FROM retail_features
GROUP BY Year,Month
ORDER BY Year,Month;           

# 3. New Customers Per Month
WITH first_purchase AS
(
SELECT
CustomerID,
MIN(InvoiceDate) AS first_date
FROM retail_features
GROUP BY CustomerID
)

SELECT
YEAR(first_date) as year,
MONTH(first_date) as month ,
COUNT(*) as newCustomers
FROM first_purchase
GROUP BY 1,2
ORDER BY 1,2; 

# 4. Customer Retention Base
SELECT
CustomerID,
MIN(InvoiceDate) AS FirstPurchase,
MAX(InvoiceDate) AS LastPurchase
FROM retail_features
GROUP BY CustomerID;

