
WITH yearly_metrics AS (
    SELECT
        company,
        fy,
        revenue_mn,
        ebitda_mn,
        pat_mn,
        LAG(revenue_mn) OVER (
            PARTITION BY company ORDER BY fy
        ) AS previous_revenue_mn,
        LAG(ebitda_mn) OVER (
            PARTITION BY company ORDER BY fy
        ) AS previous_ebitda_mn,
        LAG(pat_mn) OVER (
            PARTITION BY company ORDER BY fy
        ) AS previous_pat_mn
    FROM financials
)
SELECT
    company,
    fy,
    revenue_mn,
    ROUND(
        100.0 * (revenue_mn - previous_revenue_mn)
        / NULLIF(previous_revenue_mn, 0), 2
    ) AS revenue_growth_pct,
    ebitda_mn,
    ROUND(100.0 * ebitda_mn / revenue_mn, 2)
        AS ebitda_margin_pct,
    pat_mn,
    ROUND(100.0 * pat_mn / revenue_mn, 2)
        AS pat_margin_pct,
    ROUND(
        100.0 * (ebitda_mn - previous_ebitda_mn)
        / NULLIF(previous_ebitda_mn, 0), 2
    ) AS ebitda_growth_pct,
    ROUND(
        100.0 * (pat_mn - previous_pat_mn)
        / NULLIF(ABS(previous_pat_mn), 0), 2
    ) AS pat_growth_pct
FROM yearly_metrics
ORDER BY company, fy;
