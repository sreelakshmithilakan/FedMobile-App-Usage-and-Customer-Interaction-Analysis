# 📊 Behavioral & Transactional Analytics of FedMobile Using SQL  

A SQL-driven exploration of user engagement, app event behavior, transactional flow, and sentiment indicators for a simulated digital banking dataset. This project models realistic user interaction and survey patterns, serving as a platform for analytical SQL and behavioral interpretation.

The final database enables analysis of DAU, event frequency, transaction value, perception-behavior relationships, usage driven by advertisement awareness, funnel conversion, revenue decomposition, and segmentation.

---

## 🧩 1. Data Model Overview

The project consists of three core data entities:

### 👤 `customers`

Represents app users, their demographics, and onboarding timestamp.

**Used for:**

- User segmentation  
- Demographic insights  
- Usage differences by age / gender / city  
- Linking behavior and survey outcomes  
- Signup-based cohort grouping  

#### 📸 Customers Table Preview

![customers 10 values copy](https://github.com/user-attachments/assets/af6d59ae-67ff-4649-a3c2-31a008dc24e1)

---

### 📱 `app_usage`

Represents timestamped user activity, including logins, transfers, recharges, bill payments, etc.

**Used for:**

- Measuring engagement  
- Transaction patterns  
- Time-based usage  
- Revenue analysis  
- DAU trends  
- Funnel tracking  
- KPI root cause analysis  

#### 📸 App Usage Events Preview  

![app usage values](https://github.com/user-attachments/assets/99833a6a-c04a-4a41-841a-22029039bec2)

---

### 📝 `survey`

Captures perception data such as:

- Awareness  
- Ad influence  
- Ease-of-use  
- Trust  
- Peer recommendation  
- Switching due to ads  

**Used for:**

- Measuring sentiment  
- Evaluating marketing impact  
- Correlating opinion to behavior  
- Perception–behavior analysis  

#### 📸 Survey Table Preview  

![survey values](https://github.com/user-attachments/assets/fad0f27c-722c-41cc-a7b1-5f73659f6b1b)

---

## 🧪 2. Sample & Synthetic Data

This project uses:

### 🧮 A) Manually curated sample data  

For clean validation and readability.

### 🎲 B) SQL-randomized synthetic data  

For simulating:

- Statistical variance  
- Scale (hundreds to thousands of users)  
- Realistic behavior noise  
- Distribution variability for segmentation and funnel depth  

---

## 🔍 3. Analytical Views

Reusable SQL views created for simplified analytics:

### 👥 `v_customers`

Organized user demographic representation.

### 📅 `v_daily_events`

Provides per-day:

- Total events  
- Unique active users  
- Monetary sums  

### 🧑‍💼 `v_customer_event_summary`

Per-user behavioral breakdown:

- Total actions  
- Transfers made  
- Bills paid  

### 📈 `v_awareness_switch_rate`

Shows switching tendency relative to awareness rating.

---

## 📊 4. Analytics Queries

Includes SQL for determining:

- Total users  
- Total usage events  
- Daily active users  
- Most active users  
- Most used features  
- Average survey scores  
- Switching behaviour distribution  
- Channel preference (mobile vs web)  
- Transfer amount patterns  
- Top revenue days  
- Funnel stage counts  
- Repeat transaction behaviour  
- Revenue decomposition (volume vs value)  
- User segmentation by activity intensity  

---

## 🔬 5. Advanced BI Analysis

Beyond descriptive reporting, structured Business Intelligence investigations were performed:

### 🧭 Funnel Analysis

Login → First Monetary Transaction → Repeat Monetary Transaction  

- Measured conversion between stages  
- Identified engagement drop-off  
- Evaluated repeat usage depth  

### 💰 Revenue Decomposition (Root Cause Analysis)

Revenue analyzed as:

Transaction Volume × Average Transaction Value  

- Determined whether revenue shifts were driven by volume or transaction size  

### 👥 User Segmentation

Users categorized into:

- High Activity  
- Medium Activity  
- Low Activity  

- Evaluated engagement inequality  
- Measured revenue concentration  

### 📅 Cohort-Style Analysis

Users grouped by signup month to observe engagement sustainability.

### 📱 Channel Performance Analysis

Compared mobile vs web across:

- Event frequency  
- Revenue contribution  
- Average transaction value  

### 🧠 Survey–Behavior Correlation

Linked perception indicators (ease-of-use, awareness, trust) with:

- Transaction frequency  
- Repeat behavior  
- Revenue contribution  

---

## 📈 6. Insights and Observations  

- Transfers contribute high monetary flow  
- Activity is dominant via mobile channel  
- Revenue variation is primarily driven by transaction volume rather than transaction size  
- Higher ease-of-use scores correlate with consistent engagement  
- Engagement is concentrated among high-activity users  
- Funnel analysis highlights measurable drop-off between login and repeat transactions  

---

## 🛠️ 7. Setup & Reproduction

To recreate the environment:

1. Create database `fedmobile`  
2. Run schema creation scripts  
3. Insert sample and synthetic data  
4. Create views  
5. Execute analytical queries  

---

## 🚀 8. Future Extensions

Planned upgrades:

- Churn detection  
- Retention cohorting  
- Clustering of user usage profiles  
- Lifetime value estimations  
- Anomaly detection  
- Dashboard visualization (Power BI / Tableau)  

---

## ✍️ 9. Author

Created by **Sreelakshmi Thilakan**  
For SQL learning, behavioral analytics practice, and portfolio demonstration.
