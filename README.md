# Banking App User Engagement & Behavioral Analytics
### User Engagement, Funnel Conversion & Behavioral Intelligence Analysis

---

# Overview

Banking App User Engagement & Behavioral Analytics is an end-to-end SQL and Business Intelligence project designed to analyze customer behavior, engagement patterns, transaction activity, and revenue performance within a digital banking environment.

Using SQL and Power BI, the project transforms behavioral and transactional data into actionable business insights through:
- Funnel analysis
- User segmentation
- Revenue decomposition
- Monthly engagement analysis
- Behavioral correlation analysis

The project simulates a realistic analytics workflow commonly used in fintech and digital product environments.

---

# Key Highlights

- Built a complete analytics workflow using MySQL, SQL, and Power BI
- Designed a relational database schema for banking analytics
- Analyzed 500+ simulated banking records across customer, transaction, and survey datasets
- Created reusable SQL views and KPI reporting queries
- Performed funnel analysis, engagement segmentation, and revenue analysis
- Connected customer perception metrics with behavioral activity

---

# Tech Stack

| Tool | Purpose |
|------|----------|
| MySQL | Database management |
| SQL | Querying and analytics |
| Power BI | Dashboard visualization |
| SQL Views | Analytical reporting |
| GitHub | Project documentation |

---

# Business Problem

Digital banking platforms generate large volumes of customer interaction and transaction data every day.

The challenge is identifying:
- Why users remain inactive after registration
- Which users contribute the highest engagement and revenue
- How customer experience impacts retention
- Whether perception metrics align with actual behavior

This project addresses these questions using SQL-driven business intelligence analysis.

---

# Dataset Description

Due to privacy and accessibility limitations surrounding financial transaction data, this project uses a simulated banking dataset designed to reflect realistic customer activity and engagement patterns.

The dataset includes:
- Customer demographics
- App usage events
- Transaction activity
- Behavioral engagement patterns
- Survey responses and perception metrics

The data model was structured to support analytical workflows such as funnel analysis, segmentation, revenue analysis, and behavioral correlation studies.

---

# Database Architecture

The project uses a relational schema consisting of three core tables.

## Customers Table
Stores customer demographic information.

### Includes:
- Customer ID
- Name
- Gender
- Age
- City

---

## App Usage Table
Tracks customer activity and transactional behavior.

### Event Types:
- Login
- Transfer
- Bill Payment
- Recharge
- Profile Update
- Logout

---

## Survey Table
Captures customer perception and switching behavior.

### Includes:
- Ease of use
- Security trust
- Ad influence
- Peer recommendation
- Switching intent

---

# Data Preparation & Engineering

- Designed a normalized relational schema using MySQL
- Implemented primary keys, foreign keys, and indexing
- Structured event-based datasets for analytical workflows
- Created reusable SQL views for reporting and KPI analysis
- Organized data to support scalable business intelligence analysis

---

# SQL Analysis Performed

## KPI Analysis
- Total customers
- Total events
- Daily Active Users (DAU)
- Most active customers
- Revenue trends
- Transfer analysis

---

## Funnel Analysis
Tracked user progression through:
- Login
- First monetary transaction
- Repeat transaction

---

## Revenue Analysis
Measured:
- Transaction volume
- Average transaction value
- Revenue contribution

---

## Engagement Segmentation
Classified users into:
- High Activity
- Medium Activity
- Low Activity

---

## Monthly Engagement Analysis
Analyzed:
- Monthly engagement trends
- Revenue patterns over time
- Changes in user activity across periods

---

## Channel Performance Analysis
Compared:
- Mobile users
- Web users

Using:
- Revenue
- Event volume
- Unique users

---

## Survey–Behavior Correlation
Connected customer perception with:
- Engagement
- Transaction frequency
- Revenue generation

---

# Dashboard Snapshots

## Funnel Conversion Analysis

This analysis tracks how users move through the platform journey:

**Login → First Transaction → Repeat Transaction**

A significant reduction is observed between total registered users and active logged-in users, indicating an engagement gap at the platform activation stage.

However, users who log in show strong progression toward monetary activity and repeat transactions.

![Funnel Analysis](https://github.com/user-attachments/assets/c0c5dda7-d066-4957-a438-a32d5f42c0b7)

---

## Revenue Decomposition

Revenue analysis shows that revenue growth is influenced more by transaction frequency than transaction size.

![Revenue Breakdown](https://github.com/user-attachments/assets/35da3dd9-e351-469c-87db-94854b58fb1e)

---

## User Segmentation

Users were segmented based on engagement levels into:
- High Activity
- Medium Activity
- Low Activity

High-activity users contribute a disproportionately large share of total revenue.

![User Segmentation](https://github.com/user-attachments/assets/1387085d-2151-49a6-928c-00cc07ddac47)

---

## Behavioral vs Perception Analysis

Survey perception metrics were correlated with transactional behavior.

Users reporting higher ease-of-use and trust scores demonstrated stronger engagement and repeat transactions.

![Survey Analysis](https://github.com/user-attachments/assets/1aa7cade-b486-4848-bd66-d1c7fd46626a)

---

# Key Insights

### Platform Activation Gap
A noticeable reduction exists between total registered users and users actively logging into the platform.

### Strong Post-Login Conversion
Users who log in demonstrate strong progression toward monetary activity and repeat transactions.

### Revenue Driver
Revenue variation is influenced more by transaction frequency than transaction size.

### Engagement Concentration
A relatively small group of highly active users contributes a large share of total revenue.

### User Experience Impact
Ease-of-use and trust scores strongly correlate with engagement and repeat activity.

---

# SQL Concepts Used

- Joins
- Aggregations
- CASE Statements
- Views
- Indexing
- Foreign Keys
- Conditional Aggregation
- DATE Functions
- Revenue Analysis

---

# Project Structure

| File | Purpose |
|------|----------|
| `00_create_tables.sql` | Database schema creation |
| `01_seed_sample_data.sql` | Data generation and inserts |
| `02_views.sql` | Analytical SQL views |
| `03_analytics_queries.sql` | KPI and reporting queries |
| `04_advanced_bi_analysis.sql` | Advanced BI analysis |

---

# How to Run

## Step 1
Create database:

```sql
CREATE DATABASE fedmobile;
