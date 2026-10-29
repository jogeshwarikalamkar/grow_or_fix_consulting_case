
WITH financial_base AS (
    SELECT
        company,
        fy,
        revenue_mn,
        ebitda_mn,
        pat_mn,
        LAG(revenue_mn) OVER (
            PARTITION BY company ORDER BY fy
        ) AS previous_revenue_mn
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
        AS calculated_ebitda_margin_pct,
    pat_mn,
    ROUND(100.0 * pat_mn / revenue_mn, 2)
        AS calculated_pat_margin_pct
FROM financial_base
ORDER BY fy;
