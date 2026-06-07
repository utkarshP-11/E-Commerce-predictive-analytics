USE retail_analytics;

# Identifying products that drive customer engagement and revenue.

# 1. Most Popular Products
SELECT
Description,
COUNT(*) AS Transactions
FROM retail_features
GROUP BY Description
ORDER BY Transactions DESC
LIMIT 20;

# 2. Products With Highest Customer Reach ie product attracting more unique customers
SELECT
Description,
COUNT(DISTINCT CustomerID)
AS UniqueCustomers
FROM retail_features
GROUP BY Description
ORDER BY UniqueCustomers DESC
LIMIT 20;

# 3. Top Revenue Products
SELECT
Description,
SUM(Revenue) AS Revenue
FROM retail_features
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 20;

# 4. Products Purchased Repeatedly
SELECT
Description,
COUNT(DISTINCT InvoiceNo)
AS Orders
FROM retail_features
GROUP BY Description
ORDER BY Orders DESC
LIMIT 20;

# 5. Product Revenue Share
SELECT
Description,
ROUND(
SUM(Revenue)*100/
(SELECT SUM(Revenue)
FROM retail_features)
,2)
AS RevenueShare
FROM retail_features
GROUP BY Description
ORDER BY RevenueShare DESC
LIMIT 20;