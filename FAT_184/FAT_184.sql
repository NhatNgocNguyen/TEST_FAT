SELECT *
FROM ML.PREDICT(
  MODEL `ext-bidv-eda-internal.test.kmeans_customer_segmentation`,
  (
    SELECT
      customer_id,
      age,
      tenure_months,
      avg_monthly_spend,
      num_support_tickets
    FROM `ext-bidv-eda-internal.test.customer_churn_demo`
  )
);