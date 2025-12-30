# Bank-Loan-Customer-Profile-and-Repayment-Behavior-Analysis
Analysis of Bank Loan Customers and Repayment Pattern
Project Overview
=====
The project offers an insightful exploration of banking customer profiles based on data. With an examination of credit scores, income amounts, and the status of loans, this project is able to detect some risk patterns so that banking companies can reduce risks of defaulting on loans.

Key Objectives
Risk Pattern Identification: Ability to distinguish between trustworthy and high-risk borrowers.
Customer Segmentation: Customers to be segmented based on the level of risk associated, which will be High, Mid, Low based upon their credit scores.
Business Intelligence: Provide interactive dashboards for loan performance analysis and disbursement trends by branch.

Tech Stack
Python (Pandas, Numpy, Matplotlib, Seaborn) : For the end-to-end data cleaning, managing missing data, and exploratory data analysis tasks.
MySQL: Used for the storage of structured data and complex analysis queries like aggregations and indexing.
Power BI: Created an interactive dashboard for storytelling and decision making.

Data Pipeline &amp; Workflow
1. Data Cleaning & Preprocessing (Python)
Loaded raw banking data (banking_data.csv) using Pandas.
Removed duplicates from the data, dealt with missing data points, and ensured proper data types.
Carried out EDAs to interpret the relationships between annual income, credit score, and loan amount.
2. Database Management (MySQL)
Established a structured database named Banking_Customers_Loans and imported the clean data from the Python environment into the SQL tables.
Performed complex queries using SQL to identify the following:
Amounts and average interest rates of total loans.
Customer Segmentation on the basis of Credit Scores (< 500: High Risk), and so on. Year wise Loan Disbursement Patterns and Cumulative totals.

4. Data Visualization - Power BI
Built an interactive dashboard featuring:
Loan Status Overview: Illustrating the number of active, delayed, and defaulted loans.
Distribution of Credit Score: Mapping the count of customers across different score brackets.
Performance of Branch: Comparison of loan amounts in leading cities, including Bangalore, Chennai, Delhi, Mumbai, and Pune.
Key Takeaways
Credit Score Correlation: Higher the credit scores, the better the repayment rates.
Income Impact: The level of income of customers impacts significantly at the level of approval of loans, as well as regularity in repayments.
Risk Concentration: A tiny proportion of the high-risk customers generate the majority of defaults; this may suggest that the approval filters for specific loan types need to be more strict.

Project Structure
Plaintext
├── Data/
│   └── banking_data.csv        # Raw dataset
└── Notebooks/
│   └── EDA_Cleaning.ipynb      # Python data cleaning & analysis
├── SQL/
│   └── analytical_queries.sql  # Database setup and analysis queries
├── Dashboard/
│   └── Banking_Dashboard.pbix  # Power BI dashboard file └── README.md               
