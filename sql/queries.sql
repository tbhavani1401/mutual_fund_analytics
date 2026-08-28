-- ============================================
-- Bluestock Mutual Fund Analytics
-- 10 Analytical SQL Queries
-- ============================================

-- Q1: Top 5 funds by highest NAV ever recorded
SELECT d.scheme_name, MAX(f.nav) AS highest_nav, f.date
FROM fact_nav f
JOIN dim_fund d ON f.amfi_code = d.amfi_code
GROUP BY d.scheme_name
ORDER BY highest_nav DESC
LIMIT 5;

-- Q2: Average NAV per month for all funds
SELECT strftime('%Y-%m', date) AS month,
       ROUND(AVG(nav), 2) AS avg_nav
FROM fact_nav
GROUP BY month
ORDER BY month;

-- Q3: Funds with expense ratio less than 1%
SELECT scheme_name, fund_house, expense_ratio_pct
FROM dim_fund
WHERE expense_ratio_pct < 1.0
ORDER BY expense_ratio_pct ASC;

-- Q4: Count of funds by risk category
SELECT risk_category, COUNT(*) AS total_funds
FROM dim_fund
GROUP BY risk_category
ORDER BY total_funds DESC;

-- Q5: Count of funds by category
SELECT category, COUNT(*) AS total_funds
FROM dim_fund
GROUP BY category
ORDER BY total_funds DESC;

-- Q6: Average expense ratio by fund house
SELECT fund_house,
       ROUND(AVG(expense_ratio_pct), 2) AS avg_expense_ratio,
       COUNT(*) AS total_schemes
FROM dim_fund
GROUP BY fund_house
ORDER BY avg_expense_ratio ASC;

-- Q7: NAV trend for SBI Bluechip (amfi_code: 119551)
SELECT date, nav
FROM fact_nav
WHERE amfi_code = 119551
ORDER BY date DESC
LIMIT 30;

-- Q8: Funds launched after 2015
SELECT scheme_name, fund_house, launch_date, category
FROM dim_fund
WHERE launch_date > '2015-01-01'
ORDER BY launch_date DESC;

-- Q9: Minimum SIP amount by fund house
SELECT fund_house,
       MIN(min_sip_amount) AS min_sip,
       MAX(min_sip_amount) AS max_sip
FROM dim_fund
GROUP BY fund_house
ORDER BY min_sip ASC;

-- Q10: Latest NAV for each fund
SELECT d.scheme_name, f.nav, f.date AS latest_date
FROM fact_nav f
JOIN dim_fund d ON f.amfi_code = d.amfi_code
WHERE f.date = (
    SELECT MAX(date) FROM fact_nav
    WHERE amfi_code = f.amfi_code
)
ORDER BY f.nav DESC;
