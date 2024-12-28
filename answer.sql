-- Customer Analysis - using Bills Table

-- Question 1: Identify the top 5 customers with the highest total bill amount
SELECT CustomerID, SUM(TotalAmount) AS TotalSpent
FROM bills
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 5;

-- Question 2: Determine the average time taken to pay a bill for each customer
SELECT CustomerID, 
       AVG(DATEDIFF(PaidDate, BillDate)) AS AvgDaysToPay
FROM bills
WHERE Status = 'Paid'
GROUP BY CustomerID;

-- Question 3: Find customers who have never made a late payment
SELECT DISTINCT CustomerID
FROM bills
WHERE DATEDIFF(PaidDate, DueDate) <= 0;

-- Bill Analysis - using Bill_Items Table

-- Question 4: Calculate the total amount generated
SELECT SUM(LineTotal) AS TotalRevenue
FROM Bill_Items;

-- Question 5: Identify the item with the highest LineTotal column
SELECT ItemID, MAX(LineTotal) AS HighestLineTotal
FROM Bill_Items;

-- Question 6: Which item had the minimum LineTotal column?
SELECT ItemID, MIN(LineTotal) AS LowestLineTotal
FROM Bill_Items;

-- Payment Analysis - using Payment Table

-- Question 7: Find the most popular payment method
SELECT PaymentMethod, COUNT(*) AS UsageCount
FROM Payment
GROUP BY PaymentMethod
ORDER BY UsageCount DESC
LIMIT 1;

-- Question 8: Calculate the total revenue generated by each payment method
SELECT PaymentMethod, SUM(Amount) AS TotalRevenue
FROM Payment
GROUP BY PaymentMethod;

-- Question 9: Determine the average payment amount
SELECT AVG(Amount) AS AvgPayment
FROM Payment;

-- Data Analysis and Insights - using Bills Table

-- Question 10: Identify the top 3 categories with the highest total revenue
SELECT CategoryID, SUM(TotalAmount) AS TotalRevenue
FROM bills
GROUP BY CategoryID
ORDER BY TotalRevenue DESC
LIMIT 3;

-- Question 11: Find the customer with the highest number of unpaid bills
SELECT CustomerID, COUNT(*) AS UnpaidBillCount
FROM bills
WHERE Status = 'Unpaid'
GROUP BY CustomerID
ORDER BY UnpaidBillCount DESC
LIMIT 1;

