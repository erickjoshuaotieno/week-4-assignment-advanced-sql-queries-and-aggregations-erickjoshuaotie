# SQL Assignment Week 4: Advanced SQL Queries and Aggregations

## Learning Objectives
* Master the use of SQL aggregation functions (COUNT, SUM, AVG, MIN, MAX)
* Effectively utilize GROUP BY and HAVING clauses for data analysis
* Apply complex sorting and filtering techniques to extract meaningful insights
* Practice advanced SQL queries on real-world scenarios
--- 

## What You'll Need
* A computer with internet access
* A code editor (e.g., Visual Studio Code)
* MySQL Workbench or another SQL database environment

## Scenario
You are a data analyst for a billing company. You have access to a database containing information about customer bills. Your task is to analyze this data to gain valuable insights.

**Database Schema:**
* **bills** (BillID, CategoryID, CustomerID, BillDate, DueDate, TotalAmount, Status, DateCreated)

--- 

## Submission Instructions
1. Clone the project to your local computer.
2. Run each query on MySQL Workbench and, once successful, copy and paste the query into `answer.sql` in Visual Studio Code.
3. Use comments to document your queries. For example:
   ```sql
   -- Question 1
   SELECT * FROM orders;

--- 
## Assignment Questions

### Customer Analysis - using Bills Table
1. Identify the top 5 customers with the highest total bill amount.
2. Determine the average time taken to pay a bill for each customer.
3. Find customers who have never made a late payment.

--- 
### Bill Analysis - using Bill_Items Table
1. Calculate the total amount generated.
2. Identify the item with the highest **LineTotal** column.
3. Which item had the minimum **LineTotal** column?

--- 
### Payment Analysis - using Payment Table
1. Find the most popular payment method.
2. Calculate the total revenue generated by each payment method.
3. Determine the average payment amount.

--- 
### Data Analysis and Insights - using Bills Table
1. Identify the top 3 categories with the highest total revenue.
2. Find the customer with the highest number of unpaid bills.

**DO NOT FOR THIS REPO**

