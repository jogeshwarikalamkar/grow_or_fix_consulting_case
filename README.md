# Grow or Fix? — Consulting Analytics Case

## Business question

How can a business diagnose financial performance, evaluate
market-entry opportunities, and identify operational inefficiencies?

## Project workstreams

1. **Financial diagnosis**
   - Revenue growth
   - EBITDA and PAT margins
   - SQL CTEs and window functions
   - Data-quality validation

2. **Market-entry scoring**
   - Min-max normalization
   - Weighted scoring
   - Sensitivity analysis with simulated weights

3. **Operations efficiency**
   - Stage-duration analysis
   - SLA breach rate
   - SQL aggregation and bottleneck identification

## Tools

- Python
- pandas and NumPy
- SQLite and SQL
- Matplotlib
- Google Colab

## Reproducibility

Open the notebook in Google Colab and run its cells in order.
The notebook creates the required tables, analysis outputs and charts.

## Data integrity and limitations

- The market-entry dataset is illustrative and must not be
  interpreted as real district-level evidence.
- The operations dataset is synthetic and is used only to
  demonstrate the analysis method.
- Financial figures entered during initial development are
  provisional until reconciled to primary company filings.
- Rankings depend on chosen indicators and weights.
- Descriptive associations do not establish causation.

## Next improvements

- Replace provisional financial data with verified annual-report data.
- Add comparable peer-company financials on a consistent basis.
- Replace illustrative market inputs with sourced district data.
- Replace synthetic operations data with a licensed public dataset.
- Build an interactive dashboard and executive presentation.
