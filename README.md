# 📊 Sales Trend Analysis using SQL

## 📁 Project Overview

This project focuses on analyzing an online sales dataset to extract monthly trends in **revenue**, **order volume**, and **category/region-based breakdowns** using SQL queries. The data was cleaned, imported, and processed in **SQL Server Management Studio (SSMS)** using advanced aggregation and date-time functions.

---

## 🗃️ Dataset Description

The dataset used is a CSV file named `Online Sales Data.csv`, containing the following columns:

| Column Name        | Description                                           |
|--------------------|-------------------------------------------------------|
| `Transaction ID`   | Unique identifier for each transaction                |
| `Date`             | Date of the sales transaction                         |
| `Product Category` | Product's broader category (e.g., Electronics, Books) |
| `Product Name`     | Specific product name or model                        |
| `Units Sold`       | Number of units sold in the transaction               |
| `Unit Price`       | Price per unit                                        |
| `Total Revenue`    | Total revenue for that transaction                    |
| `Region`           | Geographic region of the transaction                  |
| `Payment Method`   | Payment mode used (e.g., Credit Card, PayPal)         |

---

## 🎯 Objective

- Extract **monthly** revenue and transaction volume.
- Analyze revenue trends by **product category**, **region**, and **payment method**.
- Identify top-performing products.

---

## 🛠️ Tools Used

- **SQL Server Management Studio (SSMS)**
- **SQL Server Express 2022**
- **CSV Data Import Wizard**
- **Microsoft Excel** (optional for visualization)

---

## 🧾 SQL Analysis Summary

### 1. Monthly Revenue and Order Volume
```sql
SELECT
    YEAR([Date]) AS [Year],
    MONTH([Date]) AS [Month],
    SUM(Total_Revenue) AS TotalRevenue,
    COUNT(DISTINCT Transaction_ID) AS TotalOrders
FROM
    [Online Sales Data]
GROUP BY
    YEAR([Date]), MONTH([Date])
ORDER BY
    [Year], [Month];
````

### 2. Revenue by Product Category (Monthly)

```sql
SELECT
    Product_Category,
    YEAR([Date]) AS [Year],
    MONTH([Date]) AS [Month],
    SUM(Total_Revenue) AS TotalRevenue
FROM
    [Online Sales Data]
GROUP BY
    Product_Category, YEAR([Date]), MONTH([Date])
ORDER BY
    Product_Category, [Year], [Month];
```

### 3. Revenue by Region (Monthly)

```sql
SELECT
    Region,
    YEAR([Date]) AS [Year],
    MONTH([Date]) AS [Month],
    SUM(Total_Revenue) AS TotalRevenue
FROM
    [Online Sales Data]
GROUP BY
    Region, YEAR([Date]), MONTH([Date])
ORDER BY
    Region, [Year], [Month];
```

### 4. Revenue by Payment Method (Monthly)

```sql
SELECT
    Payment_Method,
    YEAR([Date]) AS [Year],
    MONTH([Date]) AS [Month],
    SUM(Total_Revenue) AS TotalRevenue
FROM
    [Online Sales Data]
GROUP BY
    Payment_Method, YEAR([Date]), MONTH([Date])
ORDER BY
    Payment_Method, [Year], [Month];
```

### 5. Top 5 Products by Revenue

```sql
SELECT TOP 5
    Product_Name,
    SUM(Total_Revenue) AS TotalRevenue
FROM
    [Online Sales Data]
GROUP BY
    Product_Name
ORDER BY
    TotalRevenue DESC;
```

---

## 📤 Deliverables

| File                        | Description                            |
| --------------------------- | -------------------------------------- |
| `sales_trend_analysis.sql`  | Complete SQL script for all queries    |
| `monthly_sales_summary.csv` | Exported result of monthly trend query |
| `README.md`                 | Project documentation                  |

---

## 📈 Key Insights

* Revenue peaked in specific months due to seasonal spikes.
* Some product categories (e.g., Electronics) consistently generated higher sales.
* Credit Cards were the most common payment method.
* North America and Asia were top-performing regions.
* Top 5 products contributed significantly to total revenue.

---

## 🔐 Notes

* Date column was stored as `dd/mm/yyyy` and converted using:

  ```sql
  TRY_CONVERT(DATE, [Date], 103)
  ```
* Table name with spaces (`Online Sales Data`) was referenced using square brackets:

  ```sql
  [Online Sales Data]
  ```

---

## ✍️ Author

**Santhi Raju Peddapati**
B.Tech in Computer Science – AI & ML
GitHub:(https://github.com/SanthiNani/)
Email:santhinani364@gmail.com

---

## 📎 License

This project is for educational purposes. Feel free to fork and use it for your own analysis.

```
