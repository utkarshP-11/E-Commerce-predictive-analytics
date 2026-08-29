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

# 6. total unique Products 
SELECT count(distinct(Description))
from retail_features;                     #3877

# 7. Pareto Analysis (80/20 Rule)  
# Roughly 80% of the outcome comes from 20% of the causes
WITH product_revenue AS
(
    SELECT
        Description,
        SUM(Revenue) AS Revenue
    FROM retail_features
    GROUP BY Description
),

ranked_products AS
(
    SELECT
        Description,
        Revenue,
        ROW_NUMBER() OVER (ORDER BY Revenue DESC) AS rn,
        COUNT(*) OVER () AS total_products
    FROM product_revenue
)

SELECT
    ROUND(
        SUM(Revenue) * 100.0 /
        (SELECT SUM(Revenue) FROM product_revenue),
        2
    ) AS RevenueContribution
FROM ranked_products
WHERE rn <= CEIL(total_products * 0.20);