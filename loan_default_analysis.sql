USE bank_loans;


-- QUERY 1: Default Rate by Income Group


SELECT 
    c.income_group,
    count(l.loan_id) as total_loans,
    sum(l.default_flag) as total_defaults,
    round(sum(l.default_flag) / count(l.loan_id) * 100, 2) as default_rate_pct
FROM loans l
JOIN customers c
	ON c.loan_id = l.loan_id
GROUP BY c.income_group
ORDER BY default_rate_pct DESC;

-- Default Rate by City Tier

SELECT 
    c.city_tier,
    count(l.loan_id) AS total_loans,
    sum(l.default_flag) AS total_defaults,
    round(sum(l.default_flag) / count(l.loan_id) * 100, 2) as default_rate_pct
FROM customers c
JOIN loans l
  ON c.loan_id = l.loan_id
GROUP BY c.city_tier
ORDER BY default_rate_pct DESC;


-- Risk Segmentation (High vs Low Risk)

SELECT
    c.city_tier,
    CASE
        WHEN l.emi_income_ratio > 0.40 THEN 'High Risk'
        ELSE 'Low Risk'
    END AS risk_category,
    COUNT(*) AS total_customers,
    SUM(l.default_flag) AS total_defaults
FROM customers c
JOIN loans l
  ON c.loan_id = l.loan_id
GROUP BY c.city_tier, risk_category
ORDER BY c.city_tier, risk_category;




-- QUERY 4: Rank Risky Customers (WINDOW FUNCTION)

SELECT
    c.customer_id,
    c.loan_id,
    c.city_tier,
    c.income_group,
    l.emi_income_ratio,
    l.default_flag,
    RANK() OVER (ORDER BY l.emi_income_ratio DESC) AS risk_rank
FROM customers c
JOIN loans l
  ON c.loan_id = l.loan_id
ORDER BY risk_rank ASC;



-- risk overview

SELECT 
    COUNT(l.loan_id) AS total_loans,
    SUM(l.default_flag) AS total_defaults,
    ROUND(SUM(l.default_flag)/COUNT(l.loan_id)*100,2) AS default_rate_pct,
    ROUND(AVG(l.loan_amount),2) AS avg_loan_amount
FROM customers c
JOIN loans l
  ON c.loan_id = l.loan_id;
  