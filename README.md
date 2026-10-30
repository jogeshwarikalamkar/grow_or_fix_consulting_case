# Grow or Fix? — Consulting Analytics Case

## Project Overview

This project demonstrates a practical analytics workflow for business decision-making. It explores three questions:

1. **Financial performance:** How are revenue, EBITDA margin, and PAT margin changing over time?
2. **Market prioritization:** How can candidate markets be compared using weighted business criteria, and how stable are the rankings under uncertainty?
3. **Operations performance:** How can process duration and SLA breaches be measured to identify potential improvement opportunities?

## Business Objectives

- Analyze financial trends and validate calculated profitability margins.
- Build a transparent, weighted market-scoring model.
- Use sensitivity simulation to examine how market rankings may change.
- Audit process duration against an illustrative service-level target.
- Translate analytical results into business questions and recommendations.

## Tools and Skills

- Python
- pandas and NumPy
- Jupyter Notebook / Google Colab
- SQL
- Data cleaning and validation


## Power BI Dashboard

The Power BI dashboard presents an interactive view of financial performance and operational KPIs.

**Dashboard components:**
- Revenue trend (FY22–FY26)
- EBITDA margin trend
- PAT margin trend
- Total Revenue, EBITDA, and PAT KPI cards
- Total Orders KPI
- Operations SLA breach analysis

**Files:**
- `powerbi/` — Editable Power BI dashboard (`.pbix`) and PDF export.

**Note:** Financial and operational figures retain the data limitations described above.
- KPI analysis and financial trend analysis
- Weighted scoring and sensitivity analysis
- Operations analytics and SLA monitoring
- Data visualization

## Project Structure

- `notebooks/` — Executable analysis notebook
- `data/raw/` — Input datasets
- `sql/` — SQL analysis scripts
- `outputs/tables/` — Analytical output tables
- `outputs/charts/` — Visualizations
- `docs/` — Preliminary management summary

## Key Analytical Work

### 1. Financial Performance Diagnosis

Analyzes FY2022–FY2026 revenue, EBITDA, PAT, and profitability margins. Calculated margins are compared with the supplied reported values to support data validation.

**Important:** Financial input figures are provisional until reconciled with official company reports. They should not be interpreted as independently verified financial results.

### 2. Market Prioritization

Compares six fictional candidate markets using normalized indicators and a weighted scoring framework. A 1,000-iteration simulation examines the stability of top-three rankings.

**Important:** Market names and input values are illustrative placeholders, not actual geographic market research or investment recommendations.

### 3. Operations Audit

Analyzes 100 synthetic operational records, calculates total process duration, and measures breaches against an illustrative 48-hour SLA.

The current demonstration dataset has 16 breaches out of 100 records, a 16% illustrative breach rate. This is not a real company's operational performance.

## Reproducibility

Open `notebooks/grow_or_fix_analysis.ipynb` in Google Colab or Jupyter Notebook and run the cells in order. The notebook generates analytical tables and visualizations from the included datasets.

SQL scripts are provided separately for database-oriented analysis.

## Limitations and Data Integrity

- The financial figures require verification against official reports.
- Market-prioritization inputs are fictional and intended to demonstrate methodology.
- Operations records are synthetic and cannot support claims about a real business.
- Findings and recommendations should be revisited when verified business data becomes available.

## Conclusion

This project demonstrates how financial analysis, weighted decision models, sensitivity testing, SQL, and operational KPI analysis can support structured business decisions. Its emphasis is on reproducible analysis, transparent assumptions, and responsible interpretation of data.
