# customer-purchase-behavior-sql-analysis
SQL project that analyzes customer purchase gaps using window functions to segment customers into Frequent Buyers, Occasional Buyers, and Churn Risk categories.
# Customer Purchase Behavior Analysis using SQL Window Functions

## 📌 Overview
This project analyzes customer purchase patterns by calculating the time gap between consecutive orders. Using SQL window functions, customers are segmented into behavioral categories to support retention and marketing strategies.

---

## 🧠 Business Problem
Businesses often struggle to identify:
- Highly engaged customers
- Infrequent but active buyers
- Customers at risk of churn

Understanding purchase gaps allows teams to take proactive actions such as targeted campaigns or retention offers.

---

## 🛠️ Tools & Concepts
- SQL
- Window Functions (`LAG`)
- Common Table Expressions (CTEs)
- Customer Segmentation

---

## 🔍 Key Logic
1. Use `LAG()` to fetch each customer’s previous order date  
2. Calculate days between consecutive purchases  
3. Segment customers based on purchase frequency  

---

## 📊 Customer Segmentation Logic
| Days Between Orders | Category |
|-------------------|----------|
| ≤ 30 days | Frequent Buyer |
| 31–90 days | Occasional Buyer |
| > 90 days | Churn Risk |

---

## 🎯 Business Impact
- Enables early churn detection
- Supports targeted marketing campaigns
- Improves customer lifetime value analysis

---

## 🚀 Future Enhancements
- Revenue-based segmentation
- Rolling average purchase gap
- Integration with BI dashboards
