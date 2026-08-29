USE retail_analytics;

# Discovering growth opportunities and business patterns.

# 1. Revenue By Country
SELECT
    Country,
    SUM(Revenue) AS Revenue,
    ROUND(
        100.0 * SUM(Revenue) / SUM(SUM(Revenue)) OVER (),
        2
    ) AS Revenue_Contribution_Percent
FROM retail_features
GROUP BY Country
ORDER BY Revenue DESC;

# 2. Revenue By Weekday
SELECT
Weekday,
SUM(Revenue) AS Revenue
FROM retail_features
GROUP BY Weekday
ORDER BY Revenue DESC;

# 3. Revenue By time
SELECT
Hour,
SUM(Revenue) AS Revenue
FROM retail_features
GROUP BY Hour
ORDER BY Revenue DESC;

# 4. Monthly Revenue Trend
SELECT
Year,
Month,
SUM(Revenue) AS Revenue
FROM retail_features
GROUP BY Year,Month
ORDER BY Year,Month;

# 5. Monthly Active Customers
SELECT
Year,
Month,
COUNT(DISTINCT CustomerID) AS ActiveCustomers
FROM retail_features
GROUP BY Year,Month
ORDER BY Year,Month;

# 6. total countries covered
SELECT count(distinct(country))
from retail_features;                     #37