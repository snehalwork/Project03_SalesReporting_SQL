SELECT
    YEAR(full_date) AS sales_year,
    MONTH(full_date) AS sales_month,
    SUM(quantity) AS total_quantity,
    SUM(total_price) AS total_sales
FROM fact_sales fs
JOIN dim_date dd
ON fs.date_key = dd.date_key
GROUP BY
    YEAR(full_date),
    MONTH(full_date)
ORDER BY
    sales_year,
    sales_month;