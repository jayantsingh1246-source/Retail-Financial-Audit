CREATE DATABASE retail_audit;
USE retail_audit;

CREATE TABLE store_sales(
	CustomerID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(20),
    Category VARCHAR(50),
    ItemPurchased VARCHAR(100),
    Amount DECIMAL(10,2),
    Season VARCHAR(20),
    PaymentMethod VARCHAR(50),
    ItemRating DECIMAL(3,1),
    DiscountApplied INT,
    PreviousPurchases INT
);

LOAD DATA LOCAL INFILE '/Users/username/Downloads/store_sales.csv'
INTO TABLE store_sales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SET GLOBAL local_infile = 1;

Select * From store_sales;

SELECT 
    Category,
    COUNT(CustomerID) AS Total_Orders,
    ROUND(SUM(Amount), 2) AS Gross_Revenue,
    ROUND(SUM(Amount * (DiscountApplied / 100)), 2) AS Total_Discount_Given,
    ROUND(SUM(Amount - (Amount * (DiscountApplied / 100))), 2) AS Net_Revenue
FROM store_sales
GROUP BY Category
ORDER BY Net_Revenue DESC;

SELECT 
    Gender,
    Season,
    COUNT(CustomerID) AS Total_Shoppers,
    ROUND(AVG(PreviousPurchases), 1) AS Avg_Previous_Purchases,
    ROUND(AVG(Amount), 2) AS Average_Order_Value
FROM store_sales
GROUP BY Gender, Season
ORDER BY Average_Order_Value DESC;






