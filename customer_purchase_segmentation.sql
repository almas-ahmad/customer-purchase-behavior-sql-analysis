-- Customer Purchase Behavior Analysis
-- Business Goal: Identify customer purchase frequency and churn risk

WITH purchase_history AS (
    SELECT
        customer_id,
        order_id,
        order_date,
        LAG(order_date) OVER (
            PARTITION BY customer_id
            ORDER BY order_date
        ) AS prev_order_date
    FROM orders
),

purchase_gap AS (
    SELECT
        customer_id,
        order_id,
        order_date,
        DATE_DIFF('day', prev_order_date, order_date) AS days_between_orders
    FROM purchase_history
)

SELECT
    customer_id,
    order_id,
    order_date,
    days_between_orders,
    CASE
        WHEN days_between_orders <= 30 THEN 'Frequent Buyer'
        WHEN days_between_orders BETWEEN 31 AND 90 THEN 'Occasional Buyer'
        ELSE 'Churn Risk'
    END AS customer_category
FROM purchase_gap
ORDER BY customer_id, order_date;
