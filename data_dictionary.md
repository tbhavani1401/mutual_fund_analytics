# Data Dictionary – Bluestock Mutual Fund Analytics

## Overview
This document describes all tables, columns, data types, and business definitions used in the Bluestock MF Analytics project.

---

## Table: fact_nav
> Daily NAV prices for all mutual fund schemes

| Column | Type | Description | Source |
|--------|------|-------------|--------|
| id | INTEGER | Auto-incremented primary key | System generated |
| amfi_code | INTEGER | Unique fund identifier assigned by AMFI | 02_nav_history.csv |
| date | TEXT | Date of NAV recording (YYYY-MM-DD) | 02_nav_history.csv |
| nav | REAL | Net Asset Value in INR on that date | 02_nav_history.csv |

---

## Table: dim_fund
> Master details of all 40 mutual fund schemes

| Column | Type | Description | Source |
|--------|------|-------------|--------|
| amfi_code | INTEGER | Unique fund code by AMFI (Primary Key) | 01_fund_master.csv |
| fund_house | TEXT | Name of the Asset Management Company | 01_fund_master.csv |
| scheme_name | TEXT | Full official name of the fund scheme | 01_fund_master.csv |
| category | TEXT | Fund category (Equity, Debt, Hybrid etc.) | 01_fund_master.csv |
| sub_category | TEXT | More specific fund classification | 01_fund_master.csv |
| plan | TEXT | Direct or Regular plan | 01_fund_master.csv |
| launch_date | TEXT | Date when the fund was launched | 01_fund_master.csv |
| benchmark | TEXT | Index used to compare fund performance | 01_fund_master.csv |
| expense_ratio_pct | REAL | Annual management fee as % of AUM | 01_fund_master.csv |
| exit_load_pct | REAL | Penalty % for early withdrawal | 01_fund_master.csv |
| min_sip_amount | REAL | Minimum monthly SIP investment in INR | 01_fund_master.csv |
| min_lumpsum_amount | REAL | Minimum one-time investment in INR | 01_fund_master.csv |
| fund_manager | TEXT | Name of the fund manager | 01_fund_master.csv |
| risk_category | TEXT | Risk level (Low/Moderate/High) | 01_fund_master.csv |
| sebi_category_code | TEXT | SEBI assigned classification code | 01_fund_master.csv |

---

## Table: fact_performance
> Scheme-level performance metrics

| Column | Type | Description | Source |
|--------|------|-------------|--------|
| id | INTEGER | Auto-incremented primary key | System generated |
| amfi_code | INTEGER | Fund identifier (Foreign Key) | 07_scheme_performance.csv |
| expense_ratio | REAL | Annual fee percentage | 07_scheme_performance.csv |
| return_1yr | REAL | 1-year return percentage | 07_scheme_performance.csv |
| return_3yr | REAL | 3-year return percentage | 07_scheme_performance.csv |
| return_5yr | REAL | 5-year return percentage | 07_scheme_performance.csv |

---

## Table: fact_aum
> Assets Under Management by fund house

| Column | Type | Description | Source |
|--------|------|-------------|--------|
| id | INTEGER | Auto-incremented primary key | System generated |
| fund_house | TEXT | Name of the AMC | 03_aum_by_fund_house.csv |
| aum_crore | REAL | Total AUM in lakh crore INR | 03_aum_by_fund_house.csv |
| date | TEXT | Date of AUM recording | 03_aum_by_fund_house.csv |

---

## Business Definitions

| Term | Definition |
|------|-----------|
| NAV | Net Asset Value — price of one unit of a mutual fund on a given day |
| AUM | Assets Under Management — total money managed by a fund house |
| AMFI | Association of Mutual Funds in India — regulatory body |
| SIP | Systematic Investment Plan — fixed monthly investment |
| Expense Ratio | Annual fee charged by fund house as % of total investment |
| Exit Load | Penalty charged when investor withdraws before a set period |
| Benchmark | Market index used to compare fund's performance (e.g. Nifty 50) |
