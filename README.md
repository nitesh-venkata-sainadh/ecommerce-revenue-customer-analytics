# E-commerce Revenue & Customer Analytics

## Project Overview

This project analyzes an e-commerce retail dataset to identify revenue trends, top-performing products, and customer purchasing behavior. The goal is to understand key revenue drivers and customer activity using SQL and Python.

The analysis focuses on answering important business questions such as:
- How does revenue change over time?
- Which products generate the most revenue?
- Which customers contribute the most sales?
- Which countries generate the most revenue?

SQL was used for business analysis queries, while Python was used for data cleaning, exploratory data analysis, and visualization.

---

## Dataset

Dataset: **Online Retail II**

Time Period: **December 2010 – December 2011**

This dataset contains transactional data from an online retail store including product purchases, quantities, prices, and customer information.

### Key Columns

| Column      | Description                  |
| ----------- | ---------------------------- |
| Invoice     | Unique order identifier      |
| StockCode   | Product code                 |
| Description | Product name                 |
| Quantity    | Number of units purchased    |
| InvoiceDate | Date and time of transaction |
| Price       | Unit price                   |
| Customer ID | Unique customer identifier   |
| Country     | Customer location            |

Due to the dataset size, it is **not included in this repository**.

You can download the dataset from:

https://archive.ics.uci.edu/ml/datasets/Online+Retail+II

---

## Data Cleaning

The raw dataset contained missing values and invalid transactions. The following cleaning steps were applied:
- Removed rows with missing **Customer ID**
- Removed **negative quantities** (product returns)
- Removed rows where **Price ≤ 0**
- Converted **Customer ID** to integer format
- Created a **Revenue column (Quantity × Price)**
- Extracted **Year, Month Name, Month Number, and Day** from the transaction date

### Dataset Size

| Stage            | Rows    |
| ---------------- | ------- |
| Original dataset | 541,910 |
| Cleaned dataset  | 397,885 |

---

## SQL Business Analysis

SQL was used to answer key business questions related to revenue, product performance, and customer behavior.

### Revenue Analysis

- Total Revenue
- Monthly Revenue Trend
- Revenue by Day of Week

### Product Analysis

- Top Products by Revenue
- Top Products by Quantity

### Customer Analysis

- Top Customers by Revenue
- Customer Purchase Frequency
- RFM Customer Metrics

### Geographic Analysis

- Revenue by Country
- Customers by Country

### Business Metric

- Average Order Value (AOV)

All SQL queries are available in the **analysis.sql** file.

---

## Data Visualization

Python was used to visualize key patterns in the data.

Visualizations include:

- Monthly revenue trend
<img width="846" height="468" alt="image" src="https://github.com/user-attachments/assets/16600d38-c53c-4386-a071-94e447a50499" />

- Top products by revenue
<img width="1111" height="545" alt="image" src="https://github.com/user-attachments/assets/45f36aa0-3cda-426c-8c77-746c33dc8a90" />

- Top products by quantity
<img width="1111" height="545" alt="image" src="https://github.com/user-attachments/assets/ce87d9ac-f6ac-4a2d-baff-be5f9bcdc499" />

- Revenue by country
<img width="935" height="545" alt="image" src="https://github.com/user-attachments/assets/0f78d6d8-943e-4973-92bb-8a30492a1464" />

These charts help reveal patterns in product demand, customer purchasing behavior, and geographic sales distribution.

---

## Key Insights

- Revenue varies across months, indicating seasonal purchasing patterns.
- A small number of products generate a large share of total revenue.
- Some products sell in high quantities but generate lower revenue due to lower pricing.
- Revenue is concentrated in a few countries, with the United Kingdom contributing the largest share of sales.
- A small segment of customers contributes significantly to total revenue.

---

## Tools Used

- **Python** (Pandas, Matplotlib, Seaborn)
- **SQL (SQLite)**
- **Jupyter Notebook**
- **VS Code**

---

## Project Structure

```
ecommerce-revenue-customer-analytics
│
├── notebooks
│   └── main.ipynb
│
├── sql
│   └── analysis.sql
│
└── README.md
```

---

## Project Outcome

This analysis identifies key revenue drivers, product demand patterns, and customer purchasing behavior. These insights can help businesses optimize inventory management, marketing strategies, and customer targeting.
