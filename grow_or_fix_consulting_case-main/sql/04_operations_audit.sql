
SELECT
    COUNT(*) AS total_orders,
    ROUND(AVG(total_hours), 2) AS average_total_hours,
    ROUND(AVG(approval_hours), 2) AS average_approval_hours,
    ROUND(AVG(processing_hours), 2) AS average_processing_hours,
    ROUND(AVG(transit_hours), 2) AS average_transit_hours,
    SUM(sla_breached) AS breached_orders,
    ROUND(100.0 * AVG(sla_breached), 2) AS sla_breach_pct
FROM operations;



SELECT 'Approval' AS stage, ROUND(AVG(approval_hours), 2) AS avg_hours
FROM operations
UNION ALL
SELECT 'Processing', ROUND(AVG(processing_hours), 2)
FROM operations
UNION ALL
SELECT 'Transit', ROUND(AVG(transit_hours), 2)
FROM operations
ORDER BY avg_hours DESC;
