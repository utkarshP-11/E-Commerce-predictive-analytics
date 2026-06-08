# End-to-End Customer Intelligence & Machine Learning Project

> A complete analytics and machine learning project that transforms raw retail transaction data into actionable customer insights, churn predictions, and customer lifetime value forecasts.

---

## Overview

This project analyzes over **397,000 retail transactions** and **4,338 customers** to uncover purchasing patterns, customer behavior, retention trends, and revenue opportunities.

The project follows a complete analytics workflow, starting from data cleaning and exploratory analysis and progressing to advanced customer analytics and machine learning models.


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

```text
SQL
↓
Data Understanding & Cleaning
↓
Feature Engineering
↓
Exploratory Data Analysis
↓
RFM Analysis
↓
Cohort Analysis
↓
Churn Analysis
↓
Customer Segmentation (K-Means)
↓
Customer Churn Prediction
↓
Customer Lifetime Value Prediction
```

---

## Analytics Components

### Data Preparation

- Data Quality Assessment
- Missing Value Handling
- Transaction Validation
- Revenue Feature Creation

### Exploratory Data Analysis

- Revenue Trends
- Customer Behavior Analysis
- Geographic Analysis
- Product Performance Analysis

### Customer Analytics

- RFM Analysis
- Cohort Analysis
- Churn Analysis
- Customer Segmentation

### Machine Learning

#### Customer Churn Prediction

Models Evaluated:

- Logistic Regression
- Random Forest Classifier

Best Model Performance:

| Metric | Score |
|----------|---------:|
| Accuracy | 87.1% |
| Precision | 85.3% |
| Recall | 74.1% |
| F1 Score | 79.3% |

#### Customer Lifetime Value Prediction

Models Evaluated:

- Linear Regression
- Random Forest Regressor

Best Model Performance:

| Metric | Score |
|----------|---------:|
| R² Score | 0.62 |
| MAE | 0.595 |

---

## Key Insights

### Customer Retention

- Approximately **33% of customers** were identified as churned.
- Customer retention declines steadily over time, highlighting the importance of proactive engagement strategies.

### Customer Segmentation

- **348 Champion customers** were identified as the highest-value segment.
- **1,708 At-Risk customers** represent the largest customer segment and a significant retention opportunity.

### Revenue Performance

- The business generated over **£8.9 million** in revenue.
- Revenue was heavily concentrated among a small group of high-value customers.

### Predictive Analytics

- Churn prediction achieved **87.1% accuracy**, enabling early identification of customers likely to leave.
- CLV prediction successfully estimated future customer value with an **R² score of 0.62**.

---

## Technologies Used

### Data Analysis

- SQL
- Python
- Pandas
- NumPy

### Data Visualization

- Matplotlib
- Seaborn

### Machine Learning

- Scikit-Learn
- Logistic Regression
- Random Forest
- K-Means Clustering

### Development Environment

- Jupyter Notebook
- Google Colab
- Git
- GitHub

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

👉 **[View Full Documentation](../../wiki)**

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
