/* ============================================================
   00_create_tables.sql
   Purpose: Define core schema for the FedMobile analytics DB
   - Database: fedmobileapp
   - Tables: customers, app_usage, survey
   ============================================================ */

-- Create database if needed and select it
-- CREATE DATABASE IF NOT EXISTS fedmobile;
USE fedmobile;

---------------------------------------------------------------
-- TABLE: customers
-- Description:
--   Stores basic customer demographics and metadata.
--   One row = one unique customer.
---------------------------------------------------------------
-- CREATE TABLE customers (
--   customer_id INT AUTO_INCREMENT PRIMARY KEY,              -- Unique identifier for each customer
--   first_name VARCHAR(40),                                  -- First name
--   last_name VARCHAR(40),                                   -- Last name
--   name VARCHAR(100) AS (CONCAT(first_name,' ',last_name)), -- Computed full name (virtual column)
--   gender ENUM('Female','Male','Other') DEFAULT 'Female',   -- Gender with controlled values
--   age INT,                                                 -- Age in years
--   city VARCHAR(50),                                        -- City of residence
--   created_at DATETIME DEFAULT CURRENT_TIMESTAMP,           -- Timestamp when record was created
--   INDEX (gender),                                          -- Index to speed up gender filters
--   INDEX (age)                                              -- Index to speed up age filters
-- );

---------------------------------------------------------------
-- TABLE: app_usage
-- Description:
--   Tracks in-app events performed by customers.
--   One row = one event (login, transfer, bill_payment, etc.).
---------------------------------------------------------------
-- CREATE TABLE app_usage (
--   event_id INT AUTO_INCREMENT PRIMARY KEY,                  -- Unique identifier for each event
--   customer_id INT NOT NULL,                                 -- Foreign key to customers table
--   event_name VARCHAR(50),                                   -- Name of event type (login, transfer, etc.)
--   event_time DATETIME,                                      -- Timestamp of the event
--   amount DECIMAL(10,2) DEFAULT NULL,                        -- Monetary value if applicable, null otherwise
--   channel VARCHAR(50) DEFAULT NULL,                         -- Channel (mobile, web, ussd, etc.)
--   FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
--   INDEX (event_time),                                       -- Index for time-based queries
--   INDEX (event_name)                                        -- Index for event type analysis
-- );

---------------------------------------------------------------
-- TABLE: survey
-- Description:
--   Captures customer perception and switching behaviour.
--   One row = one survey response (Likert scale + switching).
---------------------------------------------------------------
-- CREATE TABLE survey (
--   survey_id INT AUTO_INCREMENT PRIMARY KEY,                 -- Unique identifier for each survey response
--   customer_id INT,                                          -- Optional link to customers (nullable)
--   organic_awareness TINYINT UNSIGNED,                       -- Awareness score (1 to 5)
--   ad_influence TINYINT UNSIGNED,                            -- Ad influence score (1 to 5)
--   ease_of_use TINYINT UNSIGNED,                             -- Ease of use score (1 to 5)
--   security_trust TINYINT UNSIGNED,                          -- Security trust score (1 to 5)
--   peer_recommend TINYINT UNSIGNED,                          -- Peer recommendation score (1 to 5)
--   switched_due_to_ads ENUM('Yes','No') DEFAULT 'No',        -- Whether user switched due to ads
--   created_at DATETIME DEFAULT CURRENT_TIMESTAMP,            -- Timestamp when survey was submitted
--   FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
--   INDEX (organic_awareness),                                -- Index to group by awareness quickly
--   INDEX (switched_due_to_ads)                               -- Index to filter by switching behaviour
-- );



/* ============================================================
   01_seed_sample_data.sql
   Purpose: Insert small, hand-crafted sample datasets
   - 10 customers
   - 40 app events
   - 20 survey responses
   ============================================================ */
---------------------------------------------------------------
-- SAMPLE CUSTOMERS
-- Description:
--   Initial set of 10 named customers for testing and demos.
---------------------------------------------------------------
-- INSERT INTO customers (first_name,last_name,gender,age,city) VALUES
-- ('Asha','Menon','Female',24,'Kochi'),
-- ('Rohit','Kumar','Male',29,'Bangalore'),
-- ('Neha','Sharma','Female',31,'Chennai'),
-- ('Arjun','Menon','Male',22,'Kochi'),
-- ('Divya','Mathew','Female',27,'Trivandrum'),
-- ('Pranav','Varghese','Male',35,'Kochi'),
-- ('Kavya','Krishnan','Female',21,'Bangalore'),
-- ('Ajith','Kumar','Male',33,'Chennai'),
-- ('Soumya','Joseph','Female',26,'Kochi'),
-- ('Vishnu','Mohan','Male',28,'Hyderabad');

---------------------------------------------------------------
-- SAMPLE APP USAGE EVENTS (40 rows)
-- Description:
--   Manually created events across several days and customers
--   to simulate realistic login and transaction behaviour.
---------------------------------------------------------------
-- INSERT INTO app_usage (customer_id,event_name,event_time,amount,channel) VALUES
-- (1,'login','2025-11-01 08:05:00',NULL,'mobile'),
-- (1,'transfer','2025-11-01 08:10:00',1500.00,'mobile'),
-- (2,'login','2025-11-01 09:12:00',NULL,'mobile'),
-- (2,'bill_payment','2025-11-01 09:30:00',500.00,'web'),
-- (3,'login','2025-11-02 18:25:00',NULL,'mobile'),
-- (4,'login','2025-11-03 07:50:00',NULL,'mobile'),
-- (4,'transfer','2025-11-03 08:05:00',250.00,'mobile'),
-- (5,'login','2025-11-03 11:00:00',NULL,'web'),
-- (5,'recharge','2025-11-03 11:05:00',199.00,'web'),
-- (6,'login','2025-11-04 19:10:00',NULL,'mobile'),
-- (6,'transfer','2025-11-04 19:22:00',1000.00,'mobile'),
-- (7,'login','2025-11-04 10:00:00',NULL,'web'),
-- (8,'login','2025-11-05 09:45:00',NULL,'mobile'),
-- (8,'bill_payment','2025-11-05 10:05:00',650.00,'mobile'),
-- (9,'login','2025-11-05 21:10:00',NULL,'mobile'),
-- (9,'transfer','2025-11-05 21:20:00',300.00,'mobile'),
-- (10,'login','2025-11-06 08:00:00',NULL,'web'),
-- (1,'login','2025-11-06 08:05:00',NULL,'mobile'),
-- (2,'transfer','2025-11-06 09:00:00',200.00,'mobile'),
-- (3,'bill_payment','2025-11-06 09:12:00',120.00,'web'),
-- (4,'recharge','2025-11-06 10:00:00',99.00,'mobile'),
-- (5,'transfer','2025-11-06 12:00:00',750.00,'web'),
-- (6,'login','2025-11-07 08:30:00',NULL,'mobile'),
-- (7,'transfer','2025-11-07 09:10:00',500.00,'web'),
-- (8,'login','2025-11-07 10:20:00',NULL,'mobile'),
-- (9,'recharge','2025-11-07 10:30:00',199.00,'mobile'),
-- (10,'bill_payment','2025-11-07 11:00:00',350.00,'web'),
-- (1,'transfer','2025-11-08 14:00:00',1200.00,'mobile'),
-- (2,'login','2025-11-08 15:00:00',NULL,'web'),
-- (3,'transfer','2025-11-08 15:30:00',450.00,'mobile'),
-- (4,'bill_payment','2025-11-08 16:00:00',200.00,'web'),
-- (5,'login','2025-11-09 08:00:00',NULL,'mobile'),
-- (6,'transfer','2025-11-09 09:15:00',300.00,'mobile'),
-- (7,'recharge','2025-11-09 10:00:00',199.00,'web'),
-- (8,'bill_payment','2025-11-09 11:20:00',100.00,'mobile'),
-- (9,'transfer','2025-11-09 12:00:00',250.00,'mobile'),
-- (10,'login','2025-11-09 12:30:00',NULL,'web');

---------------------------------------------------------------
-- SAMPLE SURVEY RESPONSES (20 rows)
-- Description:
--   Example Likert-scale responses and switching behaviour.
---------------------------------------------------------------
-- INSERT INTO survey (customer_id,organic_awareness,ad_influence,ease_of_use,security_trust,peer_recommend,switched_due_to_ads) VALUES
-- (1,4,3,5,4,3,'No'),
-- (2,2,4,4,3,4,'Yes'),
-- (3,5,2,4,5,5,'No'),
-- (4,3,3,3,3,2,'No'),
-- (5,4,3,5,4,3,'No'),
-- (6,2,5,4,3,2,'Yes'),
-- (7,3,2,3,4,4,'No'),
-- (8,4,3,5,4,4,'No'),
-- (9,1,4,2,2,1,'Yes'),
-- (10,3,3,3,3,3,'No'),
-- (1,4,2,5,5,4,'No'),
-- (2,2,5,4,3,4,'Yes'),
-- (3,5,3,4,5,5,'No'),
-- (4,3,4,3,3,2,'No'),
-- (5,4,3,4,4,3,'No'),
-- (6,2,4,4,3,2,'Yes'),
-- (7,3,2,3,3,4,'No'),
-- (8,4,3,5,4,4,'No'),
-- (9,1,5,1,2,1,'Yes'),
-- (10,3,3,3,3,3,'No');

-- select * from survey;

/* ============================================================
   Synthetic data generation
   Purpose: Scale dataset using randomized, repeatable patterns
   ============================================================ */

-- ---------------------------------------------------------------
-- SYNTHETIC CUSTOMERS (30 per run)
-- Description:
--   Randomizes names, ages, gender and cities to create
--   additional customers. Run multiple times to reach
--   the desired population size (for example ~300).
-- ---------------------------------------------------------------
-- INSERT INTO customers (first_name,last_name,gender,age,city)
-- SELECT
--   ELT(FLOOR(1+RAND()*10),
--       'Asha','Rohit','Neha','Arjun','Divya','Pranav','Kavya','Ajith','Soumya','Vishnu'),
--   CONCAT('L',FLOOR(1+RAND()*5000)),                        -- Random last-name-like code
--   ELT(FLOOR(1+RAND()*2),'Female','Male'),                  -- Random gender
--   FLOOR(18 + RAND() * (35 - 18 + 1)),                                   -- Random age between 18 and 35
--   ELT(FLOOR(1+RAND()*6),
--       'Kochi','Bangalore','Chennai','Trivandrum','Hyderabad','Mumbai') -- Random city
-- FROM (SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5
--       UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10
--       UNION ALL SELECT 11 UNION ALL SELECT 12 UNION ALL SELECT 13 UNION ALL SELECT 14 UNION ALL SELECT 15
--       UNION ALL SELECT 16 UNION ALL SELECT 17 UNION ALL SELECT 18 UNION ALL SELECT 19 UNION ALL SELECT 20
--       UNION ALL SELECT 21 UNION ALL SELECT 22 UNION ALL SELECT 23 UNION ALL SELECT 24 UNION ALL SELECT 25
--       UNION ALL SELECT 26 UNION ALL SELECT 27 UNION ALL SELECT 28 UNION ALL SELECT 29 UNION ALL SELECT 30) t;
-- Note:
--   Each run of this statement inserts 30 more customers.
SELECT * FROM customers;

---------------------------------------------------------------
-- SYNTHETIC APP USAGE EVENTS (20 per run)
-- Description:
--   Generates randomized events linked to existing customers.
--   Run multiple times to produce a larger event history.
---------------------------------------------------------------
-- INSERT INTO app_usage (customer_id,event_name,event_time,amount,channel)
-- SELECT
--   FLOOR(1 + RAND() * (SELECT MAX(customer_id) FROM customers)) AS customer_id,   -- Random existing customer
--   ELT(FLOOR(1+RAND()*6), 'login','transfer','bill_payment','recharge','profile_update','logout') AS event_name,
--   DATE_ADD('2025-01-01', INTERVAL FLOOR(RAND()*330) DAY)                         -- Random day in 2025
--     + INTERVAL FLOOR(RAND()*86400) SECOND                                        -- Random time within the day
--     AS event_time,
--   CASE                                                                           -- Randomly decide if event is monetary
--     WHEN RAND() < 0.6 THEN NULL                                                 -- 60 percent events are non-monetary
--     ELSE ROUND(RAND()*2000+50,2)                                                -- Otherwise random amount between ~50 and 2050
--   END AS amount,
--   ELT(FLOOR(1+RAND()*2),'mobile','web') AS channel                               -- Randomly choose mobile or web
-- FROM (SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5
--       UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10
--       UNION ALL SELECT 11 UNION ALL SELECT 12 UNION ALL SELECT 13 UNION ALL SELECT 14 UNION ALL SELECT 15
--       UNION ALL SELECT 16 UNION ALL SELECT 17 UNION ALL SELECT 18 UNION ALL SELECT 19 UNION ALL SELECT 20) t;
-- Note:
--   Each run inserts 20 events. Repeat as needed to grow the dataset.
SELECT * FROM app_usage;

---------------------------------------------------------------
-- SYNTHETIC SURVEY RESPONSES (10 per run)
-- Description:
--   Generates random survey results for existing customers.
-- ---------------------------------------------------------------
-- INSERT INTO survey (customer_id,organic_awareness,ad_influence,ease_of_use,security_trust,peer_recommend,switched_due_to_ads,created_at)
-- SELECT
--   FLOOR(1 + RAND() * (SELECT MAX(customer_id) FROM customers)),    -- Random customer
--   FLOOR(1+RAND()*5),                                               -- organic_awareness 1 to 5
--   FLOOR(1+RAND()*5),                                               -- ad_influence 1 to 5
--   FLOOR(1+RAND()*5),                                               -- ease_of_use 1 to 5
--   FLOOR(1+RAND()*5),                                               -- security_trust 1 to 5
--   FLOOR(1+RAND()*5),                                               -- peer_recommend 1 to 5
--   ELT(FLOOR(1+RAND()*2),'No','Yes'),                               -- Random switch due to ads
--   DATE_ADD('2025-01-01', INTERVAL FLOOR(RAND()*330) DAY)           -- Random survey date in 2025
-- FROM (SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5
--       UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) t;
-- Note:
--   Each run inserts 10 survey responses.

SELECT * FROM survey;


/* ============================================================
   02_views.sql
   Purpose: Create reusable analytical views
   ============================================================ */

---------------------------------------------------------------
-- VIEW: v_customers
-- Description:
--   Simple projection of customers table for easy querying.
-- ---------------------------------------------------------------
CREATE OR REPLACE VIEW v_customers AS
SELECT customer_id,
       first_name,
       last_name,
       name,
       gender,
       age,
       city,
       created_at
FROM customers;

SELECT *FROM  v_customers;

---------------------------------------------------------------
-- VIEW: v_daily_events
-- Description:
--   Aggregates app usage by day and event type.
--   Provides counts, unique users and total amount per day.
---------------------------------------------------------------
CREATE OR REPLACE VIEW v_daily_events AS
SELECT DATE(event_time) AS event_date,
       event_name,
       COUNT(*) AS events_count,                              -- Number of events for that day and type
       COUNT(DISTINCT customer_id) AS unique_users,           -- Number of unique users active
       SUM(IFNULL(amount,0)) AS total_amount                  -- Total monetary amount (null amounts treated as zero)
FROM app_usage
GROUP BY DATE(event_time), event_name;
SELECT *FROM  v_daily_events;	
---------------------------------------------------------------
-- VIEW: v_customer_event_summary
-- Description:
--   Per-customer event overview including total events and
--   specific event-type counts (transfers, bill payments).
---------------------------------------------------------------
CREATE OR REPLACE VIEW v_customer_event_summary AS
SELECT c.customer_id,
       c.name,
       c.gender,
       c.age,
       c.city,
       COUNT(a.event_id) AS total_events,
       SUM(CASE WHEN a.event_name = 'transfer' THEN 1 ELSE 0 END) AS transfers,
       SUM(CASE WHEN a.event_name = 'bill_payment' THEN 1 ELSE 0 END) AS bills
FROM customers c
LEFT JOIN app_usage a ON a.customer_id = c.customer_id
GROUP BY c.customer_id;
SELECT * FROM v_customer_event_summary;
---------------------------------------------------------------
-- VIEW: v_awareness_switch_rate
-- Description:
--   Aggregates switching behaviour by awareness level.
---------------------------------------------------------------
CREATE OR REPLACE VIEW v_awareness_switch_rate AS
SELECT organic_awareness,
       COUNT(*) AS respondents,
       SUM(switched_due_to_ads='Yes') AS switched_yes,
       ROUND(100 * SUM(switched_due_to_ads='Yes')/COUNT(*),2) AS pct_switched
FROM survey
GROUP BY organic_awareness;
SELECT * FROM v_awareness_switch_rate;


/* ============================================================
   03_analytics_queries.sql
   Purpose: Common analytical queries and metrics
   ============================================================ */

---------------------------------------------------------------
-- 1) Total customers
-- Description:
--   Returns the current number of customers in the dataset.
---------------------------------------------------------------
SELECT COUNT(*) AS total_customers
FROM customers;

---------------------------------------------------------------
-- 2) Total events
-- Description:
--   Returns the current number of app usage events logged.
---------------------------------------------------------------
SELECT COUNT(*) AS total_events
FROM app_usage;

---------------------------------------------------------------
-- 3) Most active customers (top 10 by event count)
-- Description:
--   Ranks customers by total event volume.
---------------------------------------------------------------
SELECT c.customer_id,
       c.name,
       COUNT(a.event_id) AS events
FROM customers c
LEFT JOIN app_usage a ON a.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY events DESC
LIMIT 10;

---------------------------------------------------------------
-- 4) Daily Active Users (DAU)
-- Description:
--   Counts distinct active users per day for the last 30 days.
---------------------------------------------------------------
SELECT DATE(event_time) AS day,
       COUNT(DISTINCT customer_id) AS dau
FROM app_usage
GROUP BY DATE(event_time)
ORDER BY day DESC
LIMIT 30;

---------------------------------------------------------------
-- 5) Most common event types
-- Description:
--   Shows frequency of each event type across the dataset.
---------------------------------------------------------------
SELECT event_name,
       COUNT(*) AS cnt
FROM app_usage
GROUP BY event_name
ORDER BY cnt DESC;

---------------------------------------------------------------
-- 6) Average survey scores
-- Description:
--   Computes overall mean scores for all Likert-scale fields.
---------------------------------------------------------------
SELECT
  AVG(organic_awareness) AS avg_awareness,
  AVG(ad_influence) AS avg_ad_influence,
  AVG(ease_of_use) AS avg_ease_of_use,
  AVG(security_trust) AS avg_security_trust,
  AVG(peer_recommend) AS avg_peer_recommend
FROM survey;

---------------------------------------------------------------
-- 7) Switching due to ads by awareness level
-- Description:
--   For each awareness score, shows:
--   - number who switched
--   - total respondents
--   - percentage switched
---------------------------------------------------------------
SELECT organic_awareness, 
  SUM(switched_due_to_ads='Yes') AS switched_yes,
  COUNT(*) AS total,
  ROUND(100 * SUM(switched_due_to_ads='Yes')/COUNT(*),2) AS pct_switched
FROM survey
GROUP BY organic_awareness
ORDER BY organic_awareness;

---------------------------------------------------------------
-- 8) Events per channel
-- Description:
--   Compares usage volume between channels (mobile vs web).
---------------------------------------------------------------
SELECT channel,
       COUNT(*) AS cnt
FROM app_usage
GROUP BY channel;

---------------------------------------------------------------
-- 9) Average transfer amount per customer
-- Description:
--   Focuses only on 'transfer' events and calculates:
--   - number of transfers
--   - average transfer amount
--   - total transfer amount
---------------------------------------------------------------
SELECT customer_id,
       COUNT(*) AS transfers,
       AVG(amount) AS avg_amount,
       SUM(amount) AS total_amount
FROM app_usage
WHERE event_name='transfer'
GROUP BY customer_id
ORDER BY total_amount DESC
LIMIT 20;

---------------------------------------------------------------
-- 10) Top days by revenue
-- Description:
--   Aggregates monetary amounts per day and returns
--   the top revenue-generating dates.
---------------------------------------------------------------
SELECT DATE(event_time) AS day,
       SUM(IFNULL(amount,0)) AS revenue
FROM app_usage
GROUP BY DATE(event_time)
ORDER BY revenue DESC
LIMIT 20;

/* ============================================================
   04_advanced_bi_analysis.sql
   Purpose: Advanced Business Intelligence Analysis
   Compatible with existing fedmobile schema
   ============================================================ */

USE fedmobile;

-- ---------------------------------------------------------------
-- -- 1) FUNNEL ANALYSIS
-- -- Login → First Monetary Event → Repeat Monetary Event
-- ---------------------------------------------------------------

WITH user_activity AS (
SELECT
customer_id,
SUM(event_name='login') AS login_count,
SUM(event_name IN ('transfer','bill_payment','recharge')) AS monetary_events
FROM app_usage
GROUP BY customer_id
)

SELECT
COUNT(*) AS total_users,
SUM(login_count>0) AS users_logged_in,
SUM(login_count>0 AND monetary_events>=1) AS first_transaction,
SUM(login_count>0 AND monetary_events>=2) AS repeat_transaction
FROM user_activity;



-- ---------------------------------------------------------------
-- -- 2) REVENUE DECOMPOSITION
-- -- Revenue = Transaction Volume × Average Transaction Value
-- ---------------------------------------------------------------

SELECT
    COUNT(amount) AS transaction_volume,
    ROUND(AVG(amount),2) AS avg_transaction_value,
    ROUND(SUM(amount),2) AS total_revenue
FROM app_usage
WHERE amount IS NOT NULL;



-- ---------------------------------------------------------------
-- -- Monthly Revenue Breakdown
-- ---------------------------------------------------------------

SELECT
    DATE_FORMAT(event_time,'%Y-%m') AS month,
    COUNT(amount) AS transaction_volume,
    ROUND(AVG(amount),2) AS avg_value,
    ROUND(SUM(amount),2) AS total_revenue
FROM app_usage
WHERE amount IS NOT NULL
GROUP BY DATE_FORMAT(event_time,'%Y-%m')
ORDER BY month;



-- ---------------------------------------------------------------
-- -- 3) ENGAGEMENT SEGMENTATION
-- -- High / Medium / Low based on total events
-- ---------------------------------------------------------------

WITH event_counts AS (
    SELECT
        customer_id,
        COUNT(*) AS total_events
    FROM app_usage
    GROUP BY customer_id
)

SELECT
    CASE
        WHEN total_events >= 15 THEN 'High Activity'
        WHEN total_events BETWEEN 5 AND 14 THEN 'Medium Activity'
        ELSE 'Low Activity'
    END AS segment,
    COUNT(*) AS users_in_segment
FROM event_counts
GROUP BY segment;



-- ---------------------------------------------------------------
-- -- Revenue by Segment
-- ---------------------------------------------------------------

WITH event_counts AS (
    SELECT
        customer_id,
        COUNT(*) AS total_events
    FROM app_usage
    GROUP BY customer_id
),
segmented AS (
    SELECT
        customer_id,
        CASE
            WHEN total_events >= 15 THEN 'High Activity'
            WHEN total_events BETWEEN 5 AND 14 THEN 'Medium Activity'
            ELSE 'Low Activity'
        END AS segment
    FROM event_counts
)

SELECT
    s.segment,
    ROUND(SUM(a.amount),2) AS segment_revenue
FROM segmented s
LEFT JOIN app_usage a
    ON s.customer_id = a.customer_id
WHERE a.amount IS NOT NULL
GROUP BY s.segment;


-- ---------------------------------------------------------------
-- ---------------------------------------------------------------
-- 4) ACTIVITY COHORT ANALYSIS
-- Analyze platform engagement and revenue based on event activity month
-- This helps track how user activity and revenue change over time
-- ---------------------------------------------------------------

SELECT
    DATE_FORMAT(a.event_time, '%Y-%m') AS activity_month,
    COUNT(a.event_id) AS total_events,
    ROUND(AVG(IFNULL(a.amount,0)), 2) AS avg_transaction_value,
    ROUND(SUM(IFNULL(a.amount,0)), 2) AS total_revenue
FROM app_usage a
GROUP BY activity_month
ORDER BY activity_month;

-- ---------------------------------------------------------------
-- -- 5) CHANNEL PERFORMANCE ANALYSIS
-- ---------------------------------------------------------------

SELECT
    channel,
    COUNT(*) AS total_events,
    COUNT(DISTINCT customer_id) AS unique_users,
    ROUND(SUM(IFNULL(amount,0)),2) AS total_revenue,
    ROUND(AVG(amount),2) AS avg_transaction_value
FROM app_usage
GROUP BY channel;



-- ---------------------------------------------------------------
-- -- 6) SURVEY–BEHAVIOR CORRELATION
-- ---------------------------------------------------------------

SELECT
    s.ease_of_use,
    COUNT(DISTINCT a.customer_id) AS users,
    COUNT(a.event_id) AS total_events,
    ROUND(SUM(IFNULL(a.amount,0)),2) AS total_revenue
FROM survey s
LEFT JOIN app_usage a
    ON s.customer_id = a.customer_id
GROUP BY s.ease_of_use
ORDER BY s.ease_of_use;



-- ---------------------------------------------------------------
-- -- Switching vs Transaction Behavior
-- ---------------------------------------------------------------

SELECT
    s.switched_due_to_ads,
    COUNT(DISTINCT a.customer_id) AS users,
    ROUND(AVG(a.amount),2) AS avg_transaction_value,
    ROUND(SUM(IFNULL(a.amount,0)),2) AS total_revenue
FROM survey s
LEFT JOIN app_usage a
    ON s.customer_id = a.customer_id
GROUP BY s.switched_due_to_ads;
