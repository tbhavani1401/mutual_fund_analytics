# Bluestock Mutual Fund Analytics
### Capstone Project I – MJ28 Batch | Bluestock Fintech Internship

[![Python](https://img.shields.io/badge/Python-3.x-blue)](https://python.org)
[![SQLite](https://img.shields.io/badge/Database-SQLite-green)](https://sqlite.org)
[![Pandas](https://img.shields.io/badge/Library-Pandas-orange)](https://pandas.pydata.org)

---

## 📌 Project Overview

An end-to-end mutual fund data analytics pipeline built during the Bluestock Fintech internship. The project fetches live NAV data from the AMFI API, cleans and stores 46,000+ records in a structured SQLite database, and performs exploratory and performance analysis.

---

## 📁 Folder Structure

```
mutual_fund_analytics/
├── data/
│   ├── raw/               ← Original CSV datasets + live API data
│   ├── processed/         ← Cleaned CSVs + metric outputs
│   └── db/                ← bluestock_mf.db (SQLite database)
├── notebooks/             ← Jupyter analysis notebooks
├── scripts/               ← ETL + automation scripts
├── sql/                   ← schema.sql + queries.sql
├── dashboard/             ← Power BI .pbix file
├── reports/               ← Charts + Final Report
├── data_dictionary.md     ← Column definitions
├── requirements.txt       ← Python dependencies
└── README.md
```

---

## 🚀 How to Run

```bash
# 1. Install dependencies
pip install -r requirements.txt

# 2. Run ETL pipeline
python scripts/etl_pipeline.py

# 3. Fetch live NAV
python scripts/live_nav_fetch.py

# 4. Compute metrics
python scripts/compute_metrics.py

# 5. Open Jupyter for analysis
jupyter notebook
```

---

## 📊 Key Metrics Computed

| Metric | Description |
|--------|-------------|
| CAGR | Compound Annual Growth Rate |
| Sharpe Ratio | Risk-adjusted return |
| VaR (95%) | Value at Risk |
| Volatility | Annual standard deviation of returns |
| Max Drawdown | Largest peak-to-trough decline |

---

## 🗄️ Database Schema

- `dim_fund` — 40 fund scheme details
- `fact_nav` — 45,962 daily NAV records
- `fact_performance` — Return metrics per scheme
- `fact_aum` — AUM by fund house

---

## 👩‍💻 Author

**T. Bhavani** | Data Science Intern | Bluestock Fintech MJ28
GitHub: [@tbhavani1401](https://github.com/tbhavani1401)
