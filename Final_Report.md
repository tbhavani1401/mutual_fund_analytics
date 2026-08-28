# Bluestock Mutual Fund Analytics
## Final Project Report

**Intern:** T. Bhavani (22UP1A6760)
**Batch:** MJ28
**Project:** Capstone Project I – Mutual Fund Analytics
**Start Date:** 01 June 2026
**Submission Date:** 12 June 2026

---

## 1. Executive Summary

This project builds a complete end-to-end data analytics pipeline for Indian mutual funds. It fetches live NAV data from the AMFI API, cleans and stores it in a structured SQLite database, performs exploratory and performance analysis, and presents findings through visualisations and metrics.

---

## 2. Objectives

- Fetch and store live mutual fund NAV data from mfapi.in
- Clean and validate 46,000+ records across 40 fund schemes
- Design a star schema SQLite database for structured querying
- Perform EDA to identify patterns and trends in fund data
- Calculate key performance metrics: CAGR, Sharpe Ratio, VaR, Volatility
- Build a fund recommender based on investor risk profile

---

## 3. Data Sources

| File | Records | Description |
|------|---------|-------------|
| 01_fund_master.csv | 40 | Fund scheme details |
| 02_nav_history.csv | 46,000+ | Daily NAV prices |
| 03_aum_by_fund_house.csv | - | AUM data |
| 04_monthly_sip_inflows.csv | - | SIP data |
| 05_category_inflows.csv | - | Category-level inflows |
| 06_industry_folio_count.csv | - | Industry folios |
| 07_scheme_performance.csv | - | Performance metrics |
| 08_investor_transactions.csv | - | Transaction data |
| 09_portfolio_holdings.csv | - | Holdings data |
| 10_benchmark_indices.csv | - | Benchmark data |

---

## 4. Tools & Technologies

| Category | Tools Used |
|----------|-----------|
| Language | Python 3.x |
| Data Processing | Pandas, NumPy |
| Visualisation | Matplotlib, Seaborn |
| Database | SQLite, SQLAlchemy |
| Version Control | Git, GitHub |
| Environment | Jupyter Notebook, VS Code |
| API | mfapi.in (AMFI data) |

---

## 5. Project Architecture

```
mutual_fund_analytics/
├── data/
│   ├── raw/           ← Original CSV files + live API data
│   ├── processed/     ← Cleaned CSVs + metric outputs
│   └── db/            ← bluestock_mf.db (SQLite)
├── notebooks/         ← Jupyter analysis notebooks
├── scripts/           ← ETL + metric computation scripts
├── sql/               ← Schema and query files
├── dashboard/         ← Power BI file
└── reports/           ← Final report + charts
```

---

## 6. Day-wise Work Summary

| Day | Task | Status |
|-----|------|--------|
| Day 1 | Project setup, folder structure, live NAV fetch, GitHub push | ✅ Complete |
| Day 2 | Data cleaning, SQLite DB design, schema + queries + data dictionary | ✅ Complete |
| Day 3 | EDA – 6 charts, insights, trend analysis | ✅ Complete |
| Day 4 | Performance metrics – CAGR, Sharpe, VaR, Volatility | ✅ Complete |
| Day 5 | Power BI dashboard | ✅ Complete |
| Day 6 | Advanced analytics – drawdown, correlation, recommender | ✅ Complete |
| Day 7 | Final report + presentation | ✅ Complete |

---

## 7. Key Findings

### EDA Insights
- Total of 40 mutual fund schemes analysed across 46,000+ NAV records
- Most funds fall under Equity category
- Average expense ratio is around 1.2%
- 8 funds have expense ratio below 1% — good for cost-conscious investors
- NAV trends show steady growth for large-cap funds over time

### Performance Metrics
- CAGR calculated for all 40 funds using actual date range
- Sharpe Ratio > 1 for top large-cap funds (good risk-adjusted return)
- VaR at 95% confidence shows maximum daily loss exposure per fund
- Volatility is lowest for debt funds, highest for sectoral equity funds

### Recommendations
- Low risk investors: Debt/Liquid funds with low expense ratio
- Moderate risk investors: Hybrid and large-cap equity funds
- High risk investors: Mid-cap and small-cap equity funds

---

## 8. Database Design

**Star Schema:**
- `dim_fund` — 40 fund scheme details (dimension table)
- `fact_nav` — 45,962 daily NAV records (fact table)
- `fact_performance` — scheme return metrics
- `fact_aum` — AUM by fund house

---

## 9. Deliverables Checklist

| Deliverable | File | Status |
|-------------|------|--------|
| ETL Pipeline | scripts/etl_pipeline.py | ✅ |
| SQLite Database | data/db/bluestock_mf.db | ✅ |
| EDA Notebook | notebooks/03_eda_analysis.ipynb | ✅ |
| Performance Metrics | notebooks/04_performance_analytics.ipynb | ✅ |
| Power BI Dashboard | dashboard/bluestock_mf.pbix | ✅ |
| Advanced Analytics | notebooks/05_advanced_analytics.ipynb | ✅ |
| Final Report | reports/Final_Report.md | ✅ |
| Data Dictionary | data_dictionary.md | ✅ |
| Schema SQL | sql/schema.sql | ✅ |
| Queries SQL | sql/queries.sql | ✅ |

---

## 10. Conclusion

This project successfully demonstrates how Python, SQL, and data analytics tools can be used to build a complete mutual fund analytics system. The pipeline is automated, reproducible, and well-documented. Key metrics like Sharpe Ratio, CAGR, and VaR provide actionable insights for investors and fund managers.

**GitHub:** https://github.com/tbhavani1401/mutual_fund_analytics
