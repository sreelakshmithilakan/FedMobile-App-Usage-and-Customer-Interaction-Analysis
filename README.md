# 📊 Behavioral & Transactional Analytics of FedMobile Using SQL  

A SQL-driven exploration of user engagement, app event behavior, transactional flow, and sentiment indicators for a simulated digital banking dataset. This project models realistic user interaction and survey patterns, serving as a platform for analytical SQL and behavioral interpretation.

The final database enables analysis of DAU, event frequency, transaction value, perception-behavior relationships, and usage driven by advertisement awareness.

---

## 🧩 1. Data Model Overview

The project consists of three core data entities:

### 👤 `customers`
Represents app users, their demographics, and onboarding timestamp.

Used for:
- user segmentation  
- demographic insights  
- usage differences by age/gender/city  
- linking behavior and survey outcomes  

#### 📸 Customers Table Preview

![customers 10 values copy](https://github.com/user-attachments/assets/af6d59ae-67ff-4649-a3c2-31a008dc24e1)

---

### 📱 `app_usage`
Represents timestamped user activity, including logins, transfers, recharges, bill payments, etc.

Used for:
- measuring engagement  
- transaction patterns  
- time-based usage  
- revenue analysis  
- DAU trends  

#### 📸 App Usage Events Preview  
![app usage values](https://github.com/user-attachments/assets/99833a6a-c04a-4a41-841a-22029039bec2)

---

### 📝 `survey`
Captures perception data such as:
- awareness  
- ad influence  
- ease-of-use  
- trust  
- peer recommendation  
- switching due to ads  

Used for:
- measuring sentiment  
- evaluating marketing impact  
- correlating opinion to behavior  

#### 📸 Survey Table Preview  
![survey values](https://github.com/user-attachments/assets/fad0f27c-722c-41cc-a7b1-5f73659f6b1b)

---

## 🧪 2. Sample & Synthetic Data

This project uses:

### 🧮 A) Manually curated sample data  
for clean validation and readability.

### 🎲 B) SQL-randomized synthetic data  
for simulating:
- statistical variance  
- scale (hundreds to thousands of users)  
- realistic behavior noise  

---

## 🔍 3. Analytical Views

Reusable SQL views created for simplified analytics:

### 👥 `v_customers`
Organized user demographic representation.

### 📅 `v_daily_events`
Provides per-day:
- total events  
- unique active users  
- monetary sums  

### 🧑‍💼 `v_customer_event_summary`
Per-user behavioral breakdown:
- total actions  
- transfers made  
- bills paid  

### 📈 `v_awareness_switch_rate`
Shows switching tendency relative to awareness rating.

---

## 📊 4. Analytics Queries

Includes SQL for determining:

- total users  
- total usage events  
- daily active users  
- most active users  
- most used features  
- average survey scores  
- switching behaviour distribution  
- channel preference (mobile vs web)  
- transfer amount patterns  
- top revenue days  

---

## 📈 5. Insights and Observations  
- Transfers contribute high monetary flow  
- Activity is dominant via mobile channel  
- Higher ease-of-use scores correlate with consistent engagement  
- Users with lower awareness more likely influenced by advertising  

---

## 🛠️ 6. Setup & Reproduction

To recreate the environment:

1. Create database `fedmobile`  
2. Run schema creation scripts  
3. Insert sample and synthetic data  
4. Create views  
5. Execute analytical queries  

---

## 🚀 7. Future Extensions

Planned upgrades:

- churn detection  
- retention cohorting  
- clustering of user usage profiles  
- lifetime value estimations  
- anomaly detection  
- dashboard visualization (Power BI / Tableau)  

---

## ✍️ 8. Author

Created by **Sreelakshmi Thilakan**  
For SQL learning, behavioral analytics practice, and portfolio demonstration.

---

