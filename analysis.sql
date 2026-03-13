## Total Revenue
SELECT 
    SUM(Revenue) AS Total_Revenue 
FROM sales;

## Monthly Revenue Trend
SELECT
    Year,
    Month_Num,
    SUM(Revenue) AS monthly_revenue
FROM sales
WHERE Year =2011
GROUP BY Year, Month_Num
ORDER BY Year, Month_Num;

## Top Products by Revenue
SELECT
    Description,
    SUM(Revenue) AS Total_Revenue
FROM sales
GROUP BY Description
ORDER BY Total_Revenue DESC
LIMIT 10;

## Top Products by Quantity
SELECT 
    Description,
    SUM(Quantity) AS Total_Quantity_Sold
FROM sales
GROUP BY Description
ORDER BY Total_Quantity_Sold DESC
LIMIT 10;

## Top Customers by Revenue
SELECT 
    "Customer ID",
    SUM(Revenue) AS Total_Revenue
FROM sales
GROUP BY "Customer ID"
ORDER BY Total_Revenue DESC
LIMIT 10;

## Customer Purchase Frequency
SELECT 
    "Customer ID",
    COUNT(DISTINCT Invoice) AS Number_of_Orders
FROM sales
GROUP BY "Customer ID"
ORDER BY Number_of_Orders DESC
LIMIT 10;

## Revenue by Country
SELECT 
    Country,
    SUM(Revenue) AS Total_Revenue
FROM sales
GROUP BY Country
ORDER BY Total_Revenue DESC
LIMIT 10;

## Average Order Value (AOV)
SELECT 
    SUM(Revenue) / COUNT(DISTINCT Invoice) AS Average_Order_Value
FROM sales;

## RFM Customer Segmentation
SELECT
    "Customer ID",
    CAST(
        julianday((SELECT MAX(InvoiceDate) FROM sales)) 
        - julianday(MAX(InvoiceDate))
        AS INTEGER) AS Recency,
    COUNT(DISTINCT Invoice) AS Frequency,
    SUM(Revenue) AS Monetary
FROM sales
GROUP BY "Customer ID";

## Top Countries by Number of Customers
SELECT
    Country,
    COUNT(DISTINCT "Customer ID") AS Total_Customers
FROM sales
GROUP BY Country
ORDER BY Total_Customers DESC;

## Revenue by Day of Week
SELECT
CASE strftime('%w', InvoiceDate)
    WHEN '0' THEN 'Sunday'
    WHEN '1' THEN 'Monday'
    WHEN '2' THEN 'Tuesday'
    WHEN '3' THEN 'Wednesday'
    WHEN '4' THEN 'Thursday'
    WHEN '5' THEN 'Friday'
    WHEN '6' THEN 'Saturday'
END AS Day_of_Week,
SUM(Revenue) AS Total_Revenue
FROM sales
GROUP BY Day_of_Week
ORDER BY Total_Revenue DESC;