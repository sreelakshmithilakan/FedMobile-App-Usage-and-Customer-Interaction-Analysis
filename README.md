# 📊 FedMobile Banking App Analytics

### SQL Behavioral Analytics & Power BI Insights

## 📊 Project Overview

This project analyzes **user engagement, transactional behavior, and perception indicators** for a simulated digital banking application using **SQL and Power BI**.

The objective is to demonstrate how behavioral data can be transformed into **actionable insights** through structured SQL analysis and business intelligence visualization.

**Analytics Workflow**

Synthetic Data Generation → Relational Data Model → Analytical SQL Queries → Behavioral Analysis → Business Intelligence Dashboard

The analysis explores how users interact with the app, which features drive revenue, and how user perception relates to actual engagement patterns.

---

# 🎯 Project Objectives

This project aims to answer key product and business questions:

• How actively do users engage with the banking app?

• Which features generate the most revenue?

• What factors influence repeat transactions?

• How do perception indicators relate to real behavior?

• How does engagement differ across cities, age groups, and channels?

---

# 🧰 Tools & Technologies

| Category        | Tools                |
| --------------- | -------------------- |
| Database        | MySQL                |
| Querying        | SQL                  |
| Data Modeling   | Relational Schema    |
| Data Generation | SQL Synthetic Data   |
| Visualization   | Power BI             |
| Analysis        | Behavioral Analytics |

---
## 🧩1. Data Model

The project simulates a digital banking ecosystem using three core datasets.

## 👤 Customers

Stores demographic and onboarding information.

Used for:

* segmentation by age, gender, city
* cohort-style signup analysis
* linking behavior with survey responses

#### 📸 Customers Table Preview

![customers 10 values copy](https://github.com/user-attachments/assets/af6d59ae-67ff-4649-a3c2-31a008dc24e1)

---
## 📱 App Usage

Stores timestamped events such as:

* login
* transfers
* bill payments
* recharges
* profile updates

Used to analyze:

* engagement levels
* feature popularity
* transaction activity
* daily active users

#### 📸 App Usage Events Preview  

![app usage values](https://github.com/user-attachments/assets/99833a6a-c04a-4a41-841a-22029039bec2)

---

## 📝 Survey

Captures user perception metrics including:

* organic awareness
* ad influence
* ease of use
* security trust
* peer recommendation
* switching due to ads

Used to understand:

* marketing impact
* sentiment indicators
* perception vs behavior patterns

#### 📸 Survey Table Preview  

![survey values](https://github.com/user-attachments/assets/fad0f27c-722c-41cc-a7b1-5f73659f6b1b)

---
## 🧪2. Synthetic Data Generation

The project combines:

### Curated Sample Data

Small clean samples used for validation.

### SQL Generated Synthetic Data

Randomized records created using SQL functions such as:

* `RAND()`
* `FLOOR()`
* `DATE_ADD()`

This simulates realistic patterns including:

• diverse user behavior

• transaction variability

• engagement distribution

• segmentation depth

Example 📸:
![synthetic customers 30 values](https://github.com/user-attachments/assets/304ada99-e58c-4df2-9355-3491e8d3f947)

---

## 🔍 3. Analytical Views

Reusable SQL views created for simplified analytics:

### 👥 `v_customers`

Organized user demographic representation.
<img width="540" height="160" alt="v_customers" src="https://github.com/user-attachments/assets/8638940f-aed8-4d95-bef3-3223959dce79" />


### 📅 `v_daily_events`

Provides per-day:

- Total events  
- Unique active users  
- Monetary sums
<img width="522" height="192" alt="v_daily_events" src="https://github.com/user-attachments/assets/a6661f51-fba1-4a34-be4e-f894bf6054e8" />



### 🧑‍💼 `v_customer_event_summary`

Per-user behavioral breakdown:

- Total actions  
- Transfers made  
- Bills paid

  <img width="663" height="191" alt="v_customer_event_summary" src="https://github.com/user-attachments/assets/ea9bed6d-47ca-4a0b-9dd1-8e958ec6d45d" />


### 📈 `v_awareness_switch_rate`

Shows switching tendency relative to awareness rating.

<img width="471" height="192" alt="v_awareness_switch_rate" src="https://github.com/user-attachments/assets/217789e6-f3a7-47bd-bcdf-36ad6577c5cb" />


---

## 📊 4. Analytics Queries

Includes SQL for determining:


- Total users:

<img width="182" height="82" alt="total_customers" src="https://github.com/user-attachments/assets/3ce78716-5f52-476d-b324-ea6f087bc21f" />


- Total usage events:
  
<img width="166" height="85" alt="total_events" src="https://github.com/user-attachments/assets/3085eceb-1140-4e5c-b633-8761c91c07a2" />


- Daily active users:

<img width="282" height="168" alt="day and dau" src="https://github.com/user-attachments/assets/536df7a8-4c98-423e-b446-1b8e4a0b4699" />


- Most active users:

<img width="312" height="162" alt="Most active customers" src="https://github.com/user-attachments/assets/824fa6c8-4507-44ec-a445-d3f1ec92836c" />


- Most used features:

<img width="260" height="145" alt="Most common event types" src="https://github.com/user-attachments/assets/e0fb64a3-1b24-4ef1-8d4d-f19c2b4c4b98" />



- Average survey scores:

<img width="757" height="102" alt="Average survey scores" src="https://github.com/user-attachments/assets/ae6b4237-7d5e-499e-bf8b-c6ab14d9ebed" />


- Switching behaviour distribution:

<img width="445" height="158" alt="Switching due to ads by awareness level" src="https://github.com/user-attachments/assets/93959753-3a75-4fa0-9350-50e8083e1fec" />


- Channel preference (mobile vs web):

<img width="213" height="97" alt="Events per channel" src="https://github.com/user-attachments/assets/049fe1f2-66e7-4b27-a48f-9b757a26b713" />

 
- Transfer amount patterns:

<img width="442" height="157" alt="Average transfer amount per customer" src="https://github.com/user-attachments/assets/cb3fd83e-e504-41c7-a8e8-d6b72366bd4e" />


- Top revenue days:

<img width="212" height="155" alt="Top days by revenue" src="https://github.com/user-attachments/assets/0437a2e2-3d57-4a78-9e5b-6464da96360c" />


---

## 🔬 5. Advanced BI Analysis

Beyond descriptive reporting, structured Business Intelligence investigations were performed:

### 🧭 Funnel Analysis

Login → First Monetary Transaction → Repeat Monetary Transaction  

<img width="517" height="61" alt="FUNNEL ANALYSIS" src="https://github.com/user-attachments/assets/c0c5dda7-d066-4957-a438-a32d5f42c0b7" />


- Measured conversion between stages  
- Identified engagement drop-off  
- Evaluated repeat usage depth

### 💰 Revenue Decomposition (Root Cause Analysis)

Revenue analyzed as:

Transaction Volume × Average Transaction Value  


<img width="468" height="83" alt="REVENUE DECOMPOSITION" src="https://github.com/user-attachments/assets/bcde689b-f101-49a0-a4e3-040755f3b992" />

Monthly Revenue Breakdown: 

<img width="426" height="162" alt="Monthly Revenue Breakdown" src="https://github.com/user-attachments/assets/35da3dd9-e351-469c-87db-94854b58fb1e" />

- Determined whether revenue shifts were driven by volume or transaction size

### 👥 User Segmentation

Users categorized into:

- High Activity  
- Medium Activity  
- Low Activity

<img width="298" height="83" alt="ENGAGEMENT SEGMENTATION" src="https://github.com/user-attachments/assets/1387085d-2151-49a6-928c-00cc07ddac47" />

Revenue by Segment:

<img width="298" height="77" alt="Revenue by Segment" src="https://github.com/user-attachments/assets/3a575076-532e-4ff1-b699-34fbf6f4bdac" />

- Evaluated engagement inequality  
- Measured revenue concentration  

### 📅 Activity Cohort Analysis
<img width="495" height="199" alt="image" src="https://github.com/user-attachments/assets/c3bfefb1-0ca8-4b45-8cab-3142b8ce4192" />

Platform activity grouped by event month to observe engagement trends and revenue performance over time.

### 📱 Channel Performance Analysis
<img width="562" height="78" alt="CHANNEL PERFORMANCE ANALYSIS" src="https://github.com/user-attachments/assets/00372adc-72f9-4479-b94b-701c4b350895" />

Compared mobile vs web across:

- Event frequency  
- Revenue contribution  
- Average transaction value  

### 🧠 Survey–Behavior Correlation

<img width="400" height="141" alt="SURVEY–BEHAVIOR CORRELATION" src="https://github.com/user-attachments/assets/1aa7cade-b486-4848-bd66-d1c7fd46626a" />


Switching vs Transaction Behavior:

<img width="541" height="105" alt="Switching vs Transaction Behavior" src="https://github.com/user-attachments/assets/53068227-77b5-4848-985f-01aa9d165125" />


Linked perception indicators (ease-of-use, awareness, trust) with:

- Transaction frequency  
- Repeat behavior  
- Revenue contribution  

---

# 📊 Power BI Dashboard

SQL outputs were visualized through Power BI dashboards.

## Usage & Revenue Insights

![FD 1 (1)](https://github.com/user-attachments/assets/64305349-c221-4b4f-9247-f67c610a9eb1)

Key metrics:

• Total customers: **310**
• Total events: **120**
• Total revenue: **₹40,223**

Dashboard highlights:

* revenue by event type
* daily active users trend
* event distribution
* top customers by transaction value
* revenue trend over time
* revenue by channel

---

## User Demographics & Perception

![FD 2 (1)](https://github.com/user-attachments/assets/1ec50771-4d95-46f7-8883-5c0679b6ea80)

Dashboard highlights:

* customer distribution by city
* age distribution
* revenue by city
* survey perception metrics
* switching rate by awareness level

---

# 📈 Key Insights

• **Transfers and bill payments drive the majority of revenue**

• **Mobile channel dominates engagement**

• Revenue variation is driven more by **transaction volume** than transaction size

• Engagement is concentrated among **high-activity users**

• Funnel analysis shows measurable drop-off between login and repeat transactions

• Higher **ease-of-use scores correlate with consistent engagement**

---

## 💼 Strategic Recommendations

*Derived from SQL behavioral analysis and Power BI findings — actionable directions for the FedMobile product team.*

**1. Reduce funnel drop-off between login and first transaction**
The funnel analysis shows a measurable gap between users who log in and those who complete a first monetary transaction. The product team should investigate whether this drop-off is a UX friction issue (e.g. too many steps to initiate a transfer) or an awareness issue (users not discovering features). A/B testing a simplified onboarding flow or a first-transaction nudge notification could meaningfully improve conversion.

**2. Focus retention efforts on medium-activity users, not just high-activity ones**
Revenue is concentrated among high-activity users, but this creates fragility — churn from this segment would disproportionately impact revenue. Medium-activity users represent the highest-potential growth segment. Targeted in-app prompts (e.g. bill payment reminders, recharge suggestions) timed around their existing login patterns could push them toward higher engagement tiers.

**3. Prioritise mobile experience over web — but don't abandon web for high-value transactions**
Mobile dominates engagement volume, but channel performance analysis should be checked for average transaction value differences between mobile and web. If web users transact at higher values (common in banking), the web experience deserves investment even if raw event counts are lower.

**4. Use ease-of-use score as an early churn signal**
The survey–behavior correlation shows higher ease-of-use scores link to consistent engagement. This means ease-of-use ratings collected post-onboarding could serve as a leading indicator of future retention — users rating the app below a threshold should be flagged for proactive support or UX intervention before they churn.

**5. Revenue growth strategy should focus on transaction volume, not transaction size**
Revenue decomposition confirms that volume — not average transaction value — drives revenue variation. This means acquisition and activation strategies (getting more users to transact more frequently) will yield better returns than strategies aimed at increasing spend per transaction.

---

# ⚙️ Reproducing the Project

To recreate the analysis:

1. Create database `fedmobile`
2. Run schema creation scripts
3. Insert sample and synthetic data
4. Create analytical views
5. Execute SQL analysis queries
6. Connect Power BI for visualization

---

# 🚀 Future Improvements

Potential extensions include:

• churn prediction
• retention cohort analysis
• customer lifetime value modeling
• behavioral clustering
• anomaly detection

---

# 👩‍💻 Author

**Sreelakshmi V T**

Built as a portfolio project to demonstrate **SQL analytics, behavioral analysis, and BI dashboarding.**

## ✍️ 9. Author

Created by **Sreelakshmi V T**  
For SQL learning, behavioral analytics practice, and portfolio demonstration.
