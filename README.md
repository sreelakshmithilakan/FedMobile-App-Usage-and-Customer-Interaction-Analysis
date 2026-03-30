# FedMobile Banking App: User Engagement and Behavioral Analysis

---

## Key Highlights

- Built an end-to-end product analytics workflow using SQL, MySQL, and Power BI  
- Analyzed user engagement, conversion funnel, and revenue drivers using 500+ simulated user records  
- Identified drop-offs between login and first transaction as the key conversion bottleneck  
- Quantified behavioral patterns using funnel analysis, cohort analysis, and revenue decomposition  

---

## Business Impact

This analysis enables product and business teams to:
- Improve user activation and retention through funnel optimization  
- Identify high-value user segments and reduce revenue concentration risk  
- Optimize feature strategy based on actual revenue contribution  
- Use behavioral and survey signals to predict churn and engagement  

---

## 1. Problem Statement / Business Objective

Digital banking success depends on user engagement, retention, and transaction behavior.  
This project analyzes user interaction data from a simulated banking app to understand:

- How users engage with the platform and which features drive activity  
- Where users drop off in the transaction funnel  
- What drives revenue: transaction volume or value  
- Whether user perception (ease of use, trust) aligns with actual behavior  

---

## 2. Dataset Description

A structured synthetic dataset was created to simulate real-world banking behavior due to the unavailability of public financial transaction data.

**Dataset includes:**
- Customer demographics (age, city, gender)  
- App usage events (logins, transfers, bill payments, etc.)  
- Survey responses (trust, awareness, ease of use, switching intent)  

**Data model:**
- Customers table  
- App usage events table  
- Survey responses table  

---

## 3. Data Cleaning & Preparation

- Designed a relational schema using **MySQL** to model user, event, and perception data  
- Generated synthetic data using SQL functions (`RAND()`, `FLOOR()`, `DATE_ADD()`) to simulate realistic behavior patterns  
- Created reusable SQL views to structure analysis-ready datasets  

---

## 4. Analysis Performed

- Conducted **SQL-based behavioral analysis** using joins, aggregations, CTEs, and window functions  
- Performed **funnel analysis** (login → first transaction → repeat transaction) to identify conversion drop-offs  
- Applied **cohort analysis** to track user engagement trends over time  
- Performed **revenue decomposition** to separate transaction volume vs value impact  
- Analyzed **user segmentation** based on activity levels and revenue contribution  
- Evaluated **correlation between survey perception and actual behavior**  

---

## 5. Tools & Technologies Used

- **MySQL / SQL** – Data modeling, querying, and analysis  
- **Power BI** – Dashboard development and KPI visualization  
- **SQL Functions** – Synthetic data generation and transformation  
- **Analytical Techniques** – Funnel analysis, cohort analysis, segmentation, revenue decomposition  

---

## 6. Key Insights

### Funnel Conversion

- Significant drop-off observed between login and first transaction, indicating a key activation bottleneck  

![Funnel](https://github.com/user-attachments/assets/c0c5dda7-d066-4957-a438-a32d5f42c0b7)

---

### Revenue Drivers

- Revenue variation is driven primarily by transaction volume, not transaction size  

![Revenue Breakdown](https://github.com/user-attachments/assets/35da3dd9-e351-469c-87db-94854b58fb1e)

---

### User Segmentation

- High-activity users contribute disproportionately to revenue, creating concentration risk  

![Segmentation](https://github.com/user-attachments/assets/1387085d-2151-49a6-928c-00cc07ddac47)

---

### Behavioral vs Perception Gap

- Ease-of-use and trust scores strongly correlate with engagement and repeat transactions  

![Survey Analysis](https://github.com/user-attachments/assets/1aa7cade-b486-4848-bd66-d1c7fd46626a)

---

## 7. Conclusion

User engagement and revenue in digital banking are driven by behavioral patterns rather than individual transaction size.  
Reducing friction in early-stage interactions and improving user experience can significantly increase conversion and retention.

---

## 9. Strategic Recommendations

- Optimize onboarding and first transaction experience to reduce funnel drop-offs  
- Focus retention strategies on medium-activity users for scalable growth  
- Prioritize mobile experience while evaluating high-value web transactions  
- Use ease-of-use scores as an early churn indicator  
- Drive growth through increased transaction frequency rather than transaction size  

---

## 10. How to Reproduce

1. Create database `fedmobile`  
2. Run schema creation scripts  
3. Insert synthetic data  
4. Create analytical views  
5. Execute SQL queries  
6. Connect Power BI for visualization  

---

## 11. Future Extensions

- Churn prediction model  
- Customer lifetime value (CLV) modeling  
- Behavioral clustering  
- Advanced cohort retention analysis  
- Anomaly detection for transaction patterns  

---
