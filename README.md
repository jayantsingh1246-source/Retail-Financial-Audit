# Retail Financial Audit & Customer Loyalty Analysis 📊

**Author**: Jayant Singh | Commerce Graduate & Data Analyst  
**Tech Stack**: MySQL, MS Excel, Data Visualization  

## 📌 Project Overview
This project serves as a full-stack data analytics pipeline designed to evaluate the financial health and customer retention metrics of a retail operation. By processing over 5,000 raw transaction records, this audit uncovers true net revenue drivers, quantifies margin erosion from discounting strategies, and segments customer behavior based on average order value (AOV).

The goal of this analysis was to transition from raw, unstructured data to an interactive, executive-ready financial dashboard that drives actionable corporate strategy.

## ⚙️ Methodology & Workflow

### 1. Data Engineering & Processing (MySQL)
*   Engineered a structured relational database architecture to house raw retail CSV data.
*   Bypassed default local infile restrictions to establish a robust data import pipeline.
*   Executed complex SQL queries to clean truncated data anomalies and enforce strict datatype formatting (`DECIMAL` types for precise financial modeling).

### 2. Financial Aggregation (SQL)
Rather than simple summations, the analysis focused on bottom-line impact. Wrote comprehensive queries to calculate:
*   **True Profitability**: Subtracting applied discount percentages from gross order values to determine net revenue per product category.
*   **Loyalty Metrics**: Correlating historical purchase frequency with current average order value to identify the most lucrative consumer demographics.

### 3. Business Intelligence & Visualization (MS Excel)
Exported aggregated, clean data views into MS Excel to construct an interactive, stakeholder-facing dashboard. 
*   Utilized **PivotCharts** and targeted **Slicers** to allow dynamic filtering by product category and season.
*   Removed unnecessary gridlines and legends to maintain a minimalist, professional corporate aesthetic.

## 💡 Key Business Insights
1.  **Revenue Concentration:** The `Electronics` department is the undisputed anchor of profitability, generating over $760,000 in net revenue and vastly outperforming the second-place category (Footwear at ~$120,000). 
2.  **Discount Leakage:** Highlighted specific categories where heavy discounting strategies are actively eroding gross margins without driving a proportional increase in volume.
3.  **Targeted Retention:** Mapped the direct correlation between high Average Order Value and seasonal purchasing behavior to guide future marketing budget allocation.

## 📂 Repository Contents
*   `Retail_audit_queries.sql` - The complete, commented SQL script used to build the database, clean the records, and generate the financial insights.
*   `Dashboard.png` - A high-resolution capture of the interactive MS Excel visualization layer.

---
*This project demonstrates a core understanding of both technical data extraction and the underlying business metrics required for corporate advisory and financial analysis.*
