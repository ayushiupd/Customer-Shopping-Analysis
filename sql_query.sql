-- =====================================
-- Customer Shopping Behavior Analysis
-- SQL Business Queries
-- =====================================
CREATE DATABASE customer_analysis;
USE customer_analysis;
SELECT *
FROM customer_shopping
LIMIT 5;
DESCRIBE customer_shopping;
-- =====================================
-- Customer Shopping Behavior Analysis
-- SQL Business Queries
-- =====================================

-- 1. Total Revenue

SELECT SUM(`Purchase Amount (USD)`) AS total_revenue
FROM customer_shopping;


-- 2. Total Customers

SELECT COUNT(`Customer ID`) AS total_customers
FROM customer_shopping;


-- 3. Revenue by Category

SELECT `Category`,
       SUM(`Purchase Amount (USD)`) AS revenue
FROM customer_shopping
GROUP BY `Category`
ORDER BY revenue DESC;


-- 4. Revenue by Gender

SELECT `Gender`,
       SUM(`Purchase Amount (USD)`) AS revenue
FROM customer_shopping
GROUP BY `Gender`
ORDER BY revenue DESC;


-- 5. Most Preferred Payment Method

SELECT `Payment Method`,
       COUNT(*) AS total_customers
FROM customer_shopping
GROUP BY `Payment Method`
ORDER BY total_customers DESC;


-- 6. Revenue by Season

SELECT `Season`,
       SUM(`Purchase Amount (USD)`) AS revenue
FROM customer_shopping
GROUP BY `Season`
ORDER BY revenue DESC;


-- 7. Top 10 Locations by Revenue

SELECT `Location`,
       SUM(`Purchase Amount (USD)`) AS revenue
FROM customer_shopping
GROUP BY `Location`
ORDER BY revenue DESC
LIMIT 10;


-- 8. Average Purchase Amount

SELECT AVG(`Purchase Amount (USD)`) AS average_purchase
FROM customer_shopping;


-- 9. Average Review Rating

SELECT AVG(`Review Rating`) AS average_rating
FROM customer_shopping;


-- 10. Subscription Analysis

SELECT `Subscription Status`,
       AVG(`Purchase Amount (USD)`) AS average_spending
FROM customer_shopping
GROUP BY `Subscription Status`;


-- 11. Top 5 Most Purchased Items

SELECT `Item Purchased`,
       COUNT(*) AS purchase_count
FROM customer_shopping
GROUP BY `Item Purchased`
ORDER BY purchase_count DESC
LIMIT 5;


-- 12. Discount Impact Analysis

SELECT `Discount Applied`,
       AVG(`Purchase Amount (USD)`) AS average_purchase
FROM customer_shopping
GROUP BY `Discount Applied`;



ORDER BY total_customers DESC;


-- 6. Revenue by Season

SELECT season,
       SUM(purchase_Amount) AS revenue
FROM customer_shopping
GROUP BY season
ORDER BY revenue DESC;


-- 7. Top 10 Locations by Revenue

SELECT location,
       SUM(purchase_Amount) AS revenue
FROM customer_shopping
GROUP BY location
ORDER BY revenue DESC
LIMIT 10;


-- 8. Average Purchase Amount

SELECT AVG(purchase_Amount) AS average_purchase
FROM customer_shopping;


-- 9. Average Review Rating

SELECT AVG(review_rating) AS average_rating
FROM customer_shopping;


-- 10. Subscription Analysis

SELECT subscription_status,
       AVG(purchase_Amount) AS average_spending
FROM customer_shopping
GROUP BY subscription_status;


-- 11. Top 5 Most Purchased Items

SELECT item_purchased,
       COUNT(*) AS purchase_count
FROM customer_shopping
GROUP BY item_purchased
ORDER BY purchase_count DESC
LIMIT 5;


-- 12. Discount Impact Analysis

SELECT discount_applied,
       AVG(purchase_Amount) AS average_purchase
FROM customer_shopping
GROUP BY discount_applied;

