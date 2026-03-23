# FedMobile Banking App: User Engagement and Behavioral Analysis

> *Banking apps live or die on trust and habit. This project finds out whether FedMobile users have both.*

![MySQL](https://img.shields.io/badge/MySQL-Database-blue?logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=powerbi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-Analytics-informational)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen)

---

## What this project is about

Most fintech analytics questions are not about whether users open the app. They are about whether users *come back*, whether they transact, and whether the way they feel about the product matches what they actually do.

This project builds a complete product analytics workflow for a simulated digital banking app. The data model, synthetic dataset, SQL analysis, and Power BI dashboard are all built from scratch, covering three areas: engagement patterns, revenue drivers, and the gap between user perception and real behavior.

> As proprietary banking transaction data is not publicly available, a structured synthetic dataset was designed to simulate realistic user behavior patterns. This mirrors standard practice in fintech analytics where live customer data cannot be used outside production environments.

**Workflow:**
Business Problem Definition → Data Modeling → Synthetic Data Generation → SQL Behavioral Analysis → BI Dashboard → Strategic Recommendations

---

## Business questions answered

- How actively are users engaging, and which users drive the most activity?
- Which features generate the most revenue?
- Where do users drop off between login and repeat transaction?
- Does how users rate the app (ease of use, security trust, awareness) predict how they actually behave?
- How does engagement differ across cities, age groups, and access channels?

---

## Tools and technologies

| Category | Tools |
|---|---|
| Database | MySQL |
| Querying | SQL (views, aggregations, window functions, joins) |
| Data Modeling | Relational Schema |
| Data Generation | SQL Synthetic Data using RAND(), FLOOR(), DATE_ADD() |
| Visualization | Power BI |
| Analysis | Behavioral Analytics, Funnel Analysis, Cohort Analysis, Revenue Decomposition |

---

## 1. Data model

Three tables simulate a real digital banking ecosystem.

### Customers

Demographic and onboarding data. Used for segmentation by age, gender, and city, cohort-style signup analysis, and linking behavioral data with survey responses.

![customers 10 values copy](https://github.com/user-attachments/assets/af6d59ae-67ff-4649-a3c2-31a008dc24e1)

### App usage events

Timestamped behavioral logs covering logins, transfers, bill payments, recharges, and profile updates. Every user action is a row. This is the core engagement dataset.

![app usage values](https://github.com/user-attachments/assets/99833a6a-c04a-4a41-841a-22029039bec2)

### Survey responses

Perception data collected from users: organic awareness, ad influence, ease of use, security trust, peer recommendation likelihood, and switching intent. Used to test whether stated attitudes predict real behavior.

![survey values](https://github.com/user-attachments/assets/fad0f27c-722c-41cc-a7b1-5f73659f6b1b)

---

## 2. Synthetic data generation

The dataset was built programmatically in SQL using `RAND()`, `FLOOR()`, and `DATE_ADD()` to simulate realistic patterns including transaction variability, engagement distribution, and demographic spread. A small curated sample was used alongside for validation.

![synthetic customers 30 values](https://github.com/user-attachments/assets/304ada99-e58c-4df2-9355-3491e8d3f947)

---

## 3. Analytical views

Four reusable SQL views form the analytical layer on top of the raw tables, making downstream queries cleaner and faster.

**`v_customers`** - clean demographic representation for segmentation

<img width="540" height="160" alt="v_customers" src="https://github.com/user-attachments/assets/8638940f-aed8-4d95-bef3-3223959dce79" />

**`v_daily_events`** - per-day totals: events, unique active users, monetary sums

<img width="522" height="192" alt="v_daily_events" src="https://github.com/user-attachments/assets/a6661f51-fba1-4a34-be4e-f894bf6054e8" />

**`v_customer_event_summary`** - per-user behavioral profile: total actions, transfers, bills paid

<img width="663" height="191" alt="v_customer_event_summary" src="https://github.com/user-attachments/assets/ea9bed6d-47ca-4a0b-9dd1-8e958ec6d45d" />

**`v_awareness_switch_rate`** - switching tendency by awareness rating, where perception meets behavior

<img width="471" height="192" alt="v_awareness_switch_rate" src="https://github.com/user-attachments/assets/217789e6-f3a7-47bd-bcdf-36ad6577c5cb" />

---

## 4. Analytics queries

Core descriptive queries establish the baseline before advanced analysis begins.

Total users and total events:

<img width="182" height="82" alt="total_customers" src="https://github.com/user-attachments/assets/3ce78716-5f52-476d-b324-ea6f087bc21f" />
<img width="166" height="85" alt="total_events" src="https://github.com/user-attachments/assets/3085eceb-1140-4e5c-b633-8761c91c07a2" />

Daily active users:

<img width="282" height="168" alt="day and dau" src="https://github.com/user-attachments/assets/536df7a8-4c98-423e-b446-1b8e4a0b4699" />

Most active users and most used features:

<img width="312" height="162" alt="Most active customers" src="https://github.com/user-attachments/assets/824fa6c8-4507-44ec-a445-d3f1ec92836c" />
<img width="260" height="145" alt="Most common event types" src="https://github.com/user-attachments/assets/e0fb64a3-1b24-4ef1-8d4d-f19c2b4c4b98" />

Average survey scores across all perception dimensions:

<img width="757" height="102" alt="Average survey scores" src="https://github.com/user-attachments/assets/ae6b4237-7d5e-499e-bf8b-c6ab14d9ebed" />

Switching behavior by awareness level:

<img width="445" height="158" alt="Switching due to ads by awareness level" src="https://github.com/user-attachments/assets/93959753-3a75-4fa0-9350-50e8083e1fec" />

Channel preference (mobile vs web) and transfer amount patterns:

<img width="213" height="97" alt="Events per channel" src="https://github.com/user-attachments/assets/049fe1f2-66e7-4b27-a48f-9b757a26b713" />
<img width="442" height="157" alt="Average transfer amount per customer" src="https://github.com/user-attachments/assets/cb3fd83e-e504-41c7-a8e8-d6b72366bd4e" />

Top revenue days:

<img width="212" height="155" alt="Top days by revenue" src="https://github.com/user-attachments/assets/0437a2e2-3d57-4a78-9e5b-6464da96360c" />

---

## 5. Advanced BI analysis

### Funnel analysis

The most important conversion question: how many users go from login to first transaction, and from first transaction to repeat?

Login → First Monetary Transaction → Repeat Monetary Transaction

<img width="517" height="61" alt="FUNNEL ANALYSIS" src="https://github.com/user-attachments/assets/c0c5dda7-d066-4957-a438-a32d5f42c0b7" />

The funnel measures conversion at each stage, identifies where engagement drops off, and evaluates repeat usage depth.

### Revenue decomposition

Revenue broken into its two components: transaction volume and average transaction value. This separates whether revenue shifts are driven by more transactions or bigger ones.

<img width="468" height="83" alt="REVENUE DECOMPOSITION" src="https://github.com/user-attachments/assets/bcde689b-f101-49a0-a4e3-040755f3b992" />

Monthly revenue breakdown:

<img width="426" height="162" alt="Monthly Revenue Breakdown" src="https://github.com/user-attachments/assets/35da3dd9-e351-469c-87db-94854b58fb1e" />

### User segmentation

Users categorized into high, medium, and low activity tiers based on behavioral frequency.

<img width="298" height="83" alt="ENGAGEMENT SEGMENTATION" src="https://github.com/user-attachments/assets/1387085d-2151-49a6-928c-00cc07ddac47" />

Revenue by segment, showing where concentration risk sits:

<img width="298" height="77" alt="Revenue by Segment" src="https://github.com/user-attachments/assets/3a575076-532e-4ff1-b699-34fbf6f4bdac" />

### Activity cohort analysis

Platform activity grouped by event month to track engagement trends and revenue performance over time.

<img width="495" height="199" alt="Activity Cohort Analysis" src="https://github.com/user-attachments/assets/c3bfefb1-0ca8-4b45-8cab-3142b8ce4192" />

### Channel performance analysis

Mobile vs web compared across event frequency, revenue contribution, and average transaction value.

<img width="562" height="78" alt="CHANNEL PERFORMANCE ANALYSIS" src="https://github.com/user-attachments/assets/00372adc-72f9-4479-b94b-701c4b350895" />

### Survey and behavior correlation

The most analytically interesting section: do perception scores actually predict behavior?

<img width="400" height="141" alt="SURVEY BEHAVIOR CORRELATION" src="https://github.com/user-attachments/assets/1aa7cade-b486-4848-bd66-d1c7fd46626a" />

Switching intent vs actual transaction behavior:

<img width="541" height="105" alt="Switching vs Transaction Behavior" src="https://github.com/user-attachments/assets/53068227-77b5-4848-985f-01aa9d165125" />

Ease-of-use, awareness, and trust scores are linked to transaction frequency, repeat behavior, and revenue contribution.

---

## 6. Power BI dashboard

SQL outputs are translated into two Power BI dashboard pages designed for a product or business stakeholder.

### Usage and revenue insights

![FD 1 (1)](https://github.com/user-attachments/assets/64305349-c221-4b4f-9247-f67c610a9eb1)

Key metrics: 310 total customers, 120 total events, Rs 40,223 total revenue

Covers: revenue by event type, daily active users trend, event distribution, top customers by transaction value, revenue trend over time, and revenue by channel.

### User demographics and perception

![FD 2 (1)](https://github.com/user-attachments/assets/1ec50771-4d95-46f7-8883-5c0679b6ea80)

Covers: customer distribution by city, age distribution, revenue by city, survey perception metrics, and switching rate by awareness level.

---

## 7. Key findings

- Transfers and bill payments drive the majority of revenue
- Mobile channel dominates engagement volume
- Revenue variation is driven by transaction volume, not transaction size
- Engagement and revenue are concentrated among high-activity users, which creates retention risk
- There is a measurable drop-off between login and first transaction, the highest-leverage conversion point in the funnel
- Higher ease-of-use scores correlate with consistent engagement, making this metric a potential leading indicator for churn

---

## 8. Strategic recommendations

**1. Reduce funnel drop-off between login and first transaction.**
The funnel shows a measurable gap between users who log in and those who complete a first monetary transaction. The product team should investigate whether this is a UX friction issue (too many steps to initiate a transfer) or a feature discovery issue. A/B testing a simplified onboarding flow or a first-transaction nudge could meaningfully improve conversion.

**2. Focus retention efforts on medium-activity users, not just high-activity ones.**
Revenue is concentrated among high-activity users, but this creates fragility. Churn from this segment would disproportionately impact revenue. Medium-activity users represent the highest-potential growth segment. Targeted in-app prompts timed around their existing login patterns could push them toward higher engagement tiers.

**3. Prioritise mobile experience, but audit web for high-value transactions.**
Mobile dominates engagement volume, but web users in banking contexts often transact at higher values. If the channel performance data confirms this, web deserves investment even if raw event counts are lower.

**4. Use ease-of-use score as an early churn signal.**
The survey and behavior correlation shows higher ease-of-use scores link to consistent engagement. Ease-of-use ratings collected post-onboarding could serve as a leading indicator of retention risk. Users rating below a threshold should be flagged for proactive support before they churn.

**5. Grow revenue through volume, not transaction size.**
Revenue decomposition confirms that volume drives revenue variation, not average transaction value. Acquisition and activation strategies (getting more users to transact more frequently) will outperform strategies aimed at increasing spend per transaction.

---

## 9. How to reproduce

1. Create database `fedmobile`
2. Run schema creation scripts
3. Insert sample and synthetic data
4. Create analytical views
5. Execute SQL analysis queries
6. Connect Power BI for visualization

---

## 10. Future extensions

- Churn prediction model
- Retention cohort analysis
- Customer lifetime value modeling
- Behavioral clustering
- Anomaly detection on transaction patterns

---

## About

I'm Sreelakshmi, a data analyst with a background in engineering and an MBA, focused on product analytics, BI dashboards, and behavioral data analysis. This project is part of a portfolio covering Python EDA, SQL analytics, and Power BI.

[LinkedIn](https://www.linkedin.com/in/sreelakshmithilakan/) · [Notion Portfolio](https://www.notion.so/Sreelakshmi-Thilakan-Data-Stories-2bb3af78860580f49b1fd96f8153bb49)
