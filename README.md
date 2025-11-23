# 📊 FedMobile SQL Analytics Project

This project models usage behaviour for a fictional mobile banking app called **FedMobile**, simulating real-world user activity and survey-based perception data. It serves as a playground for learning and practicing SQL data modeling, analytics, metrics tracking and business interpretation of user data.

The final output is a rich database that supports analysis of user engagement, monetary transactions, app usage frequency, and product sentiment.

---

## 🧩 1. Data Model Overview

The database is designed with three core entities:

### 👤 `customers`
Represents application users.  
Includes demographic characteristics such as gender, age, and location, along with the timestamp when they joined.

Used for:
- demographic segmentation  
- usage differences by age/gender/city  
- linking behavioural and survey data

---

### 📱 `app_usage`
Represents individual app events.  
Each row is a user action such as login, transfer, bill payment or recharge, along with a timestamp and optional monetary amount.

Used for:
- measuring engagement  
- frequency of transaction types  
- time-based behavior  
- transaction revenue  
- DAU/WAU trends  
- identifying power users

---

### 📝 `survey`
Represents user sentiment and perception of the product.  
Includes 1–5 ratings for awareness, ease-of-use, security feeling, and recommendations, plus a switching indicator if the user switched due to advertisements.

Used for:
- understanding perception  
- linking sentiment to behavior  
- conversion influenced by ads  
- trust and satisfaction analysis  

---

## 🧪 2. Sample and Synthetic Data

The database includes two types of data population:

### 🧮 A) Hand-crafted sample data
- initial users  
- app activity logs  
- survey responses  

Useful for basic validation and testing.

### 🎲 B) Synthetic randomized data 
Random data generators create:
- additional customers  
- additional events  
- additional surveys  

These allow the dataset to scale to hundreds or thousands of rows, simulating more realistic data volumes.

---

## 🔍 3. Views for Analysis

To simplify repeated queries, the project defines:

### 👥 `v_customers`
Clean representation of user information.

### 📅 `v_daily_events`
Daily aggregation of app events, including:
- event count  
- unique users  
- total monetary sum  

### 🧑‍💼 `v_customer_event_summary`
Shows event patterns per user:
- total usage  
- transfer frequency  
- bill payment frequency  

### 📈 `v_awareness_switch_rate`
Maps awareness score to switching percentage.

---

## 📊 4. Analytics Queries

Prebuilt analytical SQL used to answer questions like:

- How many customers exist?  
- How many total app events occurred?  
- What are the most common event types?  
- What is daily active user count (DAU)?  
- Which users perform the most transfers?  
- What is the revenue trend over time?  
- How many users switched due to ads?  
- How does perception correlate with switching?

These reflect real mobile app analytics workflows.

---

## 🧠 5. Use Cases

This project is ideal for practicing:

- database schema design  
- analytical SQL  
- behaviour and engagement analytics  
- business intelligence  
- customer segmentation  
- product UX measurement  
- marketing attribution  

---

## 🚀 6. Future Enhancements

Planned extensions include:

- more event categories  
- usage clustering  
- churn detection  
- user retention metrics  
- cohort analysis  
- dashboarding in Power BI or Tableau  

---

## ✍️ 7. Author

Created by **Sreelakshmi Thilakan**  
For SQL learning, analytics exploration and portfolio demonstration.

---

