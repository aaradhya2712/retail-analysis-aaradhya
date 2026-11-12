USE retail_analysis;

SELECT
    `Product Name`,
    SUM(Profit) AS total_profit
FROM orders
GROUP BY `Product Name`
ORDER BY total_profit DESC
LIMIT 10;

WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(`Order Date`, '%Y-%m-01') AS sales_month,
        SUM(Sales) AS total_sales
    FROM orders
    GROUP BY DATE_FORMAT(`Order Date`, '%Y-%m-01')
)
SELECT
    sales_month,
    ROUND(total_sales, 2) AS total_sales,
    ROUND(
        total_sales - LAG(total_sales) OVER (ORDER BY sales_month),
        2
    ) AS change_from_previous_month
FROM monthly_sales
ORDER BY sales_month;

SELECT
     'Category' AS group_type,
     Category AS group_name,
     ROUND(SUM(PROFIT)/NULLIF(SUM(SALES), 0)*100, 2) AS profit_margin_pct
     FROM orders
     GROUP BY Category
     UNION ALL
SELECT
     'Region' AS group_type,
     Region AS group_name,
     ROUND(SUM(PROFIT)/NULLIF(SUM(SALES), 0)*100, 2) AS profit_margin_pct
     FROM orders
     GROUP BY Region
     ORDER BY profit_margin_pct ASC;

-- 6. Repeat-buyer share
WITH customer_orders AS (
    SELECT
        `Customer ID`,
        COUNT(DISTINCT `Order ID`) AS order_count
    FROM orders
    GROUP BY `Customer ID`
)
SELECT
    COUNT(*) AS total_customers,
    SUM(order_count > 1) AS repeat_customers,
    ROUND(
        SUM(order_count > 1) / COUNT(*) * 100,
        2
    ) AS repeat_customer_share_pct
FROM customer_orders;

        
      
