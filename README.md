🏦 Bank Loan Default Risk Analysis 

1. Project Title / Headline
**RiskLens: Predictive Default Analysis.** An end-to-end data pipeline analyzing loan default patterns across Indian city tiers and salary slabs. Built to identify high-risk segments and provide actionable insights for reducing Non-Performing Assets (NPAs).

 2. Short Description / Purpose
In the banking sector, identifying risky borrowers before they default is critical for maintaining liquidity. This project simulates a bank analyst's workflow: cleaning raw loan data in **Excel**, performing complex risk segmentation using **MySQL**, and building a high-impact **Tableau** dashboard to visualize risk drivers like EMI-to-Income ratios and regional default trends.

3. Tech Stack
The project was built using the following tools and technologies:
* 📊 **Tableau Desktop** – Created twin dashboards for "Risk Overview" and "Risk Drivers."
* 🗄️ **MySQL** – Utilized **Window Functions (RANK)** and complex aggregations to segment customer risk.
* 📈 **Excel** – Handled data cleaning (median imputation) and calculated the **EMI-to-Income** risk flag.
* 🛠️ **Data Modeling** – Structured data to analyze correlations between city tiers and repayment behavior.

4. Data Source
* **Dataset:** Modified Kaggle Loan Prediction Dataset.
* **Indianized Features:** Adjusted for Indian currency (INR), City Tiers (Tier 1, 2, 3), and specific salary slabs.
* **Key Metrics:** Loan Amount, Income, EMI Ratio, and Default Flag.

5. Features / Highlights
* **Business Problem:** High NPA levels driven by unmonitored lending in specific demographics.
* **Goal of the Dashboard:** To empower credit officers to visualize which "Salary Slabs" and "City Tiers" require stricter lending criteria.
* **Walkthrough of Key Visuals:**
    * **Risk Overview:** High-level KPIs showing Total Loans, Overall Default Rate, and Avg Loan Amount.
    * **EMI-to-Income Analysis:** A visual breakdown showing that borrowers exceeding a 0.4 (40%) ratio represent the highest risk.
    * **City Tier Performance:** A comparison of default rates across Tier 1, 2, and 3 cities.
* **Business Impact & Insights:** * **Identified Risk:** Tier-3 cities show **1.6x higher default rates** compared to Tier-1.
    * **Threshold Strategy:** Recommended a hard cap on loans where EMI exceeds 40% of monthly income.
    * **Volume vs. Risk:** Discovered that the mid-income group contributes to the highest default volume, not the lowest income group.

6. Screenshots / Demos
> ** https://public.tableau.com/views/loan_risk_insights/LOANPORTFOLIODEFAULTRISKDASHBOARD?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link**

![Dashboard Preview]-https://github.com/nikita-kashyap-portfolio/bank-loan-default-analysis/blob/main/LOAN%20PROTFOLIO%20DEFAULT%20RISK%20DASHBOARD.png<img width="1277" height="886" alt="LOAN PROTFOLIO DEFAULT RISK DASHBOARD" src="https://github.com/user-attachments/assets/a2c48c88-c765-4b81-b600-9841ee950628" />
---

## 📂 Repository Structure
* `/dataset`: Raw and cleaned data files.
* `loan_data_cleaned.xlsx`: Excel file with pivot tables and EMI calculations.
* `loan_default_analysis.sql`: MySQL script featuring window functions and risk ranking.
* `tableau_dashboard.twbx`: The packaged interactive dashboard.
* `loan_risk_insights.pdf`: Summary report for stakeholders.

