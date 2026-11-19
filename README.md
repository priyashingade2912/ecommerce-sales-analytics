# 📊 E-Commerce Sales Analytics: End-to-End Data Analytics Project

An end-to-end **Data Analytics & Data Science** project built using **MySQL, SQL, Python, Statistics, Machine Learning, Time Series Forecasting, and Power BI** to analyze e-commerce sales, profit, customers, products, discounts, and returns. This project covers the complete analytics workflow, from data storage and extraction to cleaning, exploratory data analysis, hypothesis testing, profit prediction, sales forecasting, and interactive dashboard development.

## 🚀 Project Overview

An e-commerce company has thousands of customer orders, products, and sales transactions. This project transforms that raw data into actionable business insights by integrating SQL, Python, and Power BI. The analysis focuses on what drives sales, which products and customers are most valuable, whether discounts help the business, and what future demand will look like.

## ❓ Business Problem

Management wants to know:

- What is driving sales?
- Which products are the most profitable?
- Who are the most valuable customers?
- Is discounting actually helping the business?
- What will future sales look like?

## 🎯 Business Objectives

- Analyze revenue and profit performance.
- Identify top products, categories, and high-value customers.
- Measure the impact of discounts on profit and Average Order Value.
- Analyze return patterns.
- Predict order-level profit using machine learning.
- Forecast sales demand for the next 6 months.
- Build an interactive Power BI dashboard for decision-making.

## 🧾 Business Questions

1. How much revenue and profit did we generate?
2. Which products and categories perform best?
3. Which customers generate the most revenue?
4. Does discount impact profitability?
5. Does discount significantly affect Average Order Value?
6. Can we predict order-level profit?
7. Can we forecast future sales?

## 📂 Dataset

- **Database:** `ecommerce_analytics` (MySQL)
- **Tables:** Customers, Products, Orders, OrderDetails, Returns
- **Records:** [add number of orders, e.g. 10K+ Orders]
- **Source:** [add source, e.g. course-provided dataset / Kaggle link]

### Database Structure

- Customers → Orders (one-to-many)
- Orders → OrderDetails (one-to-many)
- Products → OrderDetails (one-to-many)
- Orders → Returns (one-to-many)

<!-- Add your ER diagram: ![ER Diagram](images/er_diagram.png) -->

## 🛠️ Tech Stack

- **Database:** MySQL
- **Query Language:** SQL
- **Programming:** Python
- **Libraries:** Pandas, NumPy, Matplotlib, Seaborn
- **Statistics:** SciPy (t-test, p-value, significance level)
- **Machine Learning & Forecasting:** Scikit-learn, Time Series Forecasting
- **Visualization & Dashboard:** Power BI
- **Version Control:** Git & GitHub

## 📌 Project Workflow

1. Store and manage raw data in MySQL
2. Extract data using SQL (JOINs, aggregations)
3. Connect MySQL with Python
4. Data cleaning (missing values, duplicates, data types)
5. Exploratory Data Analysis (EDA)
6. Statistical analysis
7. Hypothesis testing
8. Build prediction models (order profit)
9. Forecast future sales (next 6 months)
10. Build Power BI dashboard
11. Business insights & recommendations

## 📈 Key Features

- SQL queries using JOINs, aggregations, and grouping
- Data cleaning and transformation with Pandas
- Missing value and duplicate handling
- EDA: monthly sales trends, category and regional performance, customer behaviour, discount patterns, profit distribution, outliers, correlations
- Descriptive statistics: mean, median, mode, variance, standard deviation, quartiles, percentiles, correlation, distribution
- Hypothesis testing with t-test, p-value, and significance level
- Machine learning model evaluated with MAE, RMSE, and R² score
- Time series sales forecasting
- Interactive Power BI dashboard with KPIs

## 🧪 Hypothesis Testing

**Question:** Does discount significantly affect Average Order Value?

- **H₀:** Discount has no significant effect on Average Order Value.
- **H₁:** Discount has a significant effect on Average Order Value.
- **Method:** Two-sample t-test at 5% significance level (α = 0.05)
- **Result:** [t-statistic = ..., p-value = ... → reject / fail to reject H₀]

## 🤖 Profit Prediction Model

- **Goal:** Predict order profit
- **Features:** Quantity, Unit Price, Discount, Category, Region, Customer Information
- **Models tried:** [e.g. Linear Regression, Random Forest]
- **Best model performance:** MAE = [...], RMSE = [...], R² = [...]

## 🔮 Sales Forecasting

- **Input:** Historical monthly sales
- **Approach:** Time series analysis → forecasting model
- **Forecast horizon:** Next 6 months
- **Outcome:** [e.g. sales expected to grow / stay stable by ...%]

## 📊 Dashboard Highlights

### Executive Overview
- Total Revenue
- Total Profit
- Total Orders
- Total Customers
- Average Order Value (AOV)

### Customer Analytics
- Top Customers
- [Add your visuals]

### Product Analytics
- Top Products and Categories
- [Add your visuals]

### Sales Analytics
- Monthly Revenue Trend
- Regional Performance
- Discount vs Profit

### Forecasting
- 6-Month Sales Forecast

## 💡 Business Insights

- [Total revenue and profit generated: ...]
- [Top 3 categories / products and their contribution: ...]
- [Top customers or regions driving revenue: ...]
- [Effect of discounts on profit: ...]
- [Hypothesis test conclusion: ...]
- [Most important factors in predicting profit: ...]
- [Forecast summary and recommendation: ...]

## 📷 Dashboard Preview

<!-- After uploading images to the repo's images/ folder, use: -->
<!-- ![Executive Overview](images/dashboard_1.png) -->
<!-- ![Customer Analytics](images/dashboard_2.png) -->
<!-- ![Forecasting](images/dashboard_3.png) -->

## 📁 Repository Structure

```
ecommerce-sales-analytics/
├── data/            # CSV files (or sample data)
├── sql/             # table creation and analysis queries
├── notebooks/       # EDA, statistics, ML, forecasting notebooks
├── powerbi/         # .pbix dashboard file
├── images/          # dashboard and chart screenshots
├── requirements.txt
└── README.md
```

## ▶️ How to Run

1. Create the tables using the scripts in `sql/` and load the CSV files into MySQL.
2. Install dependencies: `pip install -r requirements.txt`
3. Update the database connection details in the notebook (use your own credentials, never commit passwords).
4. Run the notebooks in order.
5. Open the `.pbix` file in Power BI Desktop.

## 📌 Future Enhancements

- Deploy the dashboard using Power BI Service
- Automate the data refresh pipeline
- Try advanced forecasting models (Prophet, ARIMA, LSTM)
- Implement Row-Level Security (RLS)
- Add drill-through reports

## 👨‍💻 Author

Priyadarshani Suresh Shingade

- LinkedIn: www.linkedin.com/in/priyadarshani-shingade-228626354
- GitHub: https://github.com/priyashingade2912
