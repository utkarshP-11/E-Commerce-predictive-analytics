USE retail_analytics;

# Identifying high-value customers and revenue concentration.

# 1. Customer Lifetime Value
SELECT
CustomerID,
ROUND(SUM(Revenue),2)
AS LifetimeValue
FROM retail_features
GROUP BY CustomerID;

# 2. Top 10 Customers
SELECT
CustomerID,
ROUND(SUM(Revenue),2)
AS Revenue
FROM retail_features
GROUP BY CustomerID
ORDER BY Revenue DESC
LIMIT 10;

# 3. Revenue Concentration
WITH customer_revenue AS
(
SELECT
CustomerID,
SUM(Revenue) AS Revenue
FROM retail_features
GROUP BY CustomerID
),

ranked AS
(
SELECT *,
ROW_NUMBER() OVER
(ORDER BY Revenue DESC) rn
FROM customer_revenue
)

SELECT
ROUND(
SUM(
CASE WHEN rn<=10
THEN Revenue
ELSE 0 END
)*100/
SUM(Revenue)
,2)
AS Top10Contribution
FROM ranked;

# 4. Revenue Distribution By Customer
SELECT
CustomerID,
SUM(Revenue) AS Revenue
FROM retail_features
GROUP BY CustomerID
ORDER BY Revenue DESC;