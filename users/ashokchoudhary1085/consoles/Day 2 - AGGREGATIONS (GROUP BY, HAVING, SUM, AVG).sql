-- connection: 6ae98a08a68227a1e4145eda
-- database: chinook

-- ============================================================
-- 📊 DAY 2 - AGGREGATIONS (GROUP BY, HAVING, SUM, AVG)
-- ============================================================
-- Practice aggregations with the Chinook Music Store database!
-- 
-- Key concepts:
--   COUNT()    → Count rows or non-null values
--   SUM()      → Add up numeric values
--   AVG()      → Calculate average
--   MIN/MAX()  → Find smallest/largest values
--   GROUP BY   → Group rows by column(s) for aggregation
--   HAVING     → Filter groups (like WHERE but for aggregated data)
--
-- Available tables:
--   customer     → customer_id, first_name, last_name, city, country, email
--   invoice      → invoice_id, customer_id, invoice_date, billing_country, total
--   invoice_line → invoice_line_id, invoice_id, track_id, unit_price, quantity
--   track        → track_id, name, album_id, genre_id, milliseconds, unit_price
--   album        → album_id, title, artist_id
--   artist       → artist_id, name
--   genre        → genre_id, name
--   employee     → employee_id, first_name, last_name, title, reports_to
-- ============================================================


-- ============================================================
-- 🟢 LEVEL 1: BASIC AGGREGATIONS (no GROUP BY)
-- ============================================================

-- Q1: How many customers are in the database?
-- Write a query using COUNT(*)

SELECT count(customer_id) as customer_count
FROM customer;



-- Q2: What is the total revenue from all invoices?
-- Use SUM() on the total column from invoice


-- Q3: What is the average invoice total?
-- Use AVG() and round to 2 decimal places


-- Q4: What are the shortest and longest track durations (in milliseconds)?
-- Use MIN() and MAX()


-- ============================================================
-- 🟡 LEVEL 2: GROUP BY (aggregate per category)
-- ============================================================

-- Q5: How many customers are in each country?
-- Group by country, show country and count, order by count descending


-- Q6: Total revenue by billing_country
-- Sum invoice.total grouped by billing_country, top 10 countries


-- Q7: Average track price for each genre
-- Join track with genre, group by genre name, show avg unit_price


-- Q8: How many albums does each artist have?
-- Join album with artist, group by artist name, order by count desc


-- ============================================================
-- 🔴 LEVEL 3: HAVING (filter groups)
-- ============================================================

-- Q9: Which countries have more than 10 customers?
-- Group customers by country, use HAVING COUNT(*) > 10


-- Q10: Which genres have more than 50 tracks?
-- Join track with genre, group by genre, HAVING count > 50


-- Q11: Which artists have earned more than $50 in total sales?
-- Join invoice_line → track → album → artist
-- Group by artist name, sum unit_price * quantity, HAVING sum > 50


-- Q12: Which customers have spent more than $50 total?
-- Join customer with invoice, group by customer, HAVING sum(total) > 50
-- Show first_name, last_name, and total_spent


-- ============================================================
-- 💡 TIPS
-- ============================================================
-- • WHERE filters rows BEFORE grouping
-- • HAVING filters groups AFTER grouping
-- • Always include grouped columns in SELECT
-- • Use aliases (AS) to make output readable
-- • ORDER BY comes after GROUP BY/HAVING
