-- connection: 6ae98a08a68227a1e4145eda

-- ============================================================
-- 🟢 LEVEL 1: BASICS (SELECT, WHERE, ORDER BY, LIMIT)
-- ============================================================



-- Q1: Get all customers from Brazil
-- Write a query to return first_name, last_name, city, country

-- ✅ Corrected: Use single quotes for text values like 'Brazil'
-- SELECT first_name, last_name, city, country 
-- FROM customer 
-- WHERE country = 'Brazil';


-- Q2: Find all tracks that cost more than $1.50
-- Return name and unit_price, sorted by price descending

-- SELECT name,unit_price
-- from track
-- WHERE unit_price > 1.50
-- ORDER BY unit_price  DESC

-- Q3: List the 5 longest tracks (by milliseconds)
-- Return name, milliseconds (convert to minutes by dividing by 60000)

-- ✅ Corrected: 
-- 1. Added 'name' to SELECT (you only had minutes)
-- 2. ORDER BY must come BEFORE LIMIT (SQL clause order matters!)

-- SELECT name, milliseconds / 60000 AS minutes
-- FROM track
-- ORDER BY milliseconds DESC
-- LIMIT 5;

-- Q4: Find all customers whose email contains "gmail"
-- Return first_name, last_name, email

-- SELECT first_name,last_name,email
-- FROM customer
-- where email like '%gmail%'



-- Q5: Count how many customers are from each country
-- Show country and the count, sorted by count descending

-- SELECT count(customer_id) as Customer_count, country
-- from customer
-- GROUP BY country
-- ORDER BY Customer_count desc

