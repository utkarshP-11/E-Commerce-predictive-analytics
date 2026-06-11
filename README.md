# End-to-End Customer Intelligence & Machine Learning Project

> A complete analytics and machine learning project that transforms raw retail transaction data into actionable customer insights, churn predictions, and customer lifetime value forecasts.

---
![Python](https://img.shields.io/badge/Python-3.8%2B-blue.svg)
![Jupyter Notebook](https://img.shields.io/badge/Tools-Jupyter_Notebook-orange.svg)
![Machine Learning](https://img.shields.io/badge/Machine_Learning-Scikit_Learn-yellow.svg)
![SQL](https://img.shields.io/badge/Database-SQL-lightgrey.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

---

## Overview

This project analyzes over **397,000 retail transactions** and **4,338 customers** to uncover purchasing patterns, customer behavior, retention trends, and revenue opportunities.

The business served **4,338 customers** who placed **18,532 orders**, averaging **4.27 orders per customer**, with each customer generating **£2,054.27 in revenue** and an **average order value of £480.87**.

The project follows a complete analytics workflow, starting from data cleaning and exploratory analysis and progressing to advanced customer analytics and machine learning models.

👉 **[View Full Documentation](https://github.com/utkarshP-11/E-Commerce-predictive-analytics/wiki)** for detailed project methodology, SQL analysis, EDA, customer analytics and machine learning models.

---

## Key Results

| Metric | Value |
|----------|---------:|
| Transactions Analyzed | 397,884 |
| Customers Analyzed | 4,338 |
| Total Revenue | £8.91M |
| Champion Customers | 348 |
| At-Risk Customers | 1,708 |
| Churn Rate | 33.31% |
| Churn Prediction Accuracy | 87.1% |
| CLV Prediction R² Score | 0.62 |

---

## Project Workflow

<img width="820" height="1103" alt="image" src="https://github.com/user-attachments/assets/7cb4df1b-22c0-44fd-b97d-e0001f844ac1" />

---
## Dataset Source

The data used in this project is the **`Online Retail Data Set.xlsx`**, publicly available from the [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/352/online+retail). It contains transnational transactions occurring between 01/12/2010 and 09/12/2011 for a UK-based and registered non-store online retail.

---

## Analytics Components

- **Data Preparation:** Data quality assessment, missing value treatment, transaction validation, and feature engineering.
- **Exploratory Analysis:** Revenue trends, customer behavior, product performance, and geographic sales analysis.
- **Customer Intelligence:** RFM analysis, cohort retention analysis, churn analysis, and K-Means customer segmentation.
- **Customer Churn Prediction:** Evaluated Logistic Regression and Random Forest models, with **Random Forest** achieving **87.10% Accuracy**, **79.26% F1-Score**, and **0.9453 ROC-AUC**.
- **Customer Lifetime Value Prediction:** Evaluated Linear Regression and Random Forest Regressor models, with **Random Forest Regressor** achieving **62.08% R²** and **0.5950 MAE**.
---

## Key Insights

### Customer Retention

- Approximately **33% of customers** were identified as churned i.e. 1 in 3 customers were identified as churned.
- Customer retention declines steadily over time, highlighting the importance of proactive engagement strategies.

### Customer Segmentation

- **348 Champion customers** were identified as the highest-value segment.
- The highest-value customer generated $280,206.02 in lifetime revenue.
- **1,708 At-Risk customers** represent the largest customer segment and a significant retention opportunity.

### Revenue Performance

- The business generated over **£8.9 million** in revenue.
- The top 20% of products contributed 78.99% (£7.038M) of total revenue (£8.91M).
- The top 10 customers contributed 17.26% (£1.537M) of total business revenue (£8.91M).
- The United Kingdom generated 82.01% of total revenue, making it the dominant market.
- Netherlands follows as the second-largest market, bringing in 3.20% of total revenue.
- The top 3 countries contributed 88.19% of total revenue.
- Revenue was heavily concentrated among a small group of high-value customers.

### Predictive Analytics

- The Random Forest churn model achieved **87.10% accuracy**, **79.26% F1-score**, and an **ROC-AUC of 0.9453**, enabling highly reliable identification of customers at risk of churning.
- The Customer Lifetime Value (CLV) prediction model achieved an **R² score of 62.08%** and a **Mean Absolute Error (MAE) of 0.5950**, with the Random Forest Regressor outperforming Linear Regression in predicting future customer value.
---

## Technologies Used

**Languages & Querying:** SQL, Python

**Data Analysis:** Pandas, NumPy

**Visualization:** Matplotlib, Seaborn

**Machine Learning:** Scikit-Learn, Logistic Regression, Random Forest, K-Means Clustering

**Development Tools:** Jupyter Notebook, Google Colab, Git, GitHub

---

## Repository Structure

```text
├── Datas/
│   ├── cleaned_retail.csv
│   ├── retail_features.csv
│   ├── rfm_customer_segments.csv
│   ├── cohort_retention.csv
│   ├── revenue_retention.csv
│   ├── customer_segments.csv
│   ├── customer_churn_dataset.csv
│   ├── customer_churn_predictions.csv
│   ├── feature_importance.csv
│   └── model_comparison.csv
│
├── SQL/
│   ├── 0_data_loading.sql
|   ├── 01_user_metrics.sql
|   ├── 02_retention_analysis.sql
|   ├── 03_product_engagement.sql
|   ├── 04_customer_value_analysis.sql
|   └── 05_business_insights.sql
│
├── notebooks/
│   ├── 01_Data_Understanding_Cleaning.ipynb
│   ├── 02_Feature_Engineering.ipynb
│   ├── 03_EDA.ipynb
│   ├── 04_RFM_Analysis.ipynb
│   ├── 05_Cohort_Analysis.ipynb
│   ├── 06_Churn_Analysis.ipynb
│   ├── 07_KMeans_Customer_Segmentation.ipynb
│   ├── 08_Customer_Churn_Prediction.ipynb
│   └── 09_CLV_Prediction.ipynb
│
├── images/
├── requirements.txt
└── README.md
```

---

## Documentation

Detailed documentation for each stage of the project is available in the GitHub Wiki.

### Wiki Contents

- Data Understanding & Cleaning
- Feature Engineering
- Exploratory Data Analysis
- RFM Analysis
- Cohort Analysis
- Churn Analysis
- Customer Segmentation
- Customer Churn Prediction
- Customer Lifetime Value Prediction
- Recommendations & Conclusion

👉 **[View Full Documentation](https://github.com/utkarshP-11/E-Commerce-predictive-analytics/wiki)**

---
### Business Questions Addressed

- Who are the most valuable customers?
- Which customers are likely to churn?
- How can customers be segmented effectively?
- What is the future value of each customer?
- Which customer groups should the business prioritize?
- How can machine learning improve customer retention and growth?
---
## Future Improvements

- XGBoost and LightGBM for churn prediction
- Advanced CLV modeling using BG/NBD and Gamma-Gamma models
- Automated model retraining pipeline
- Real-time customer scoring system
- Customer recommendation engine
