CREATE OR REPLACE MODEL `ext-bidv-eda-internal.test.kmeans_customer_segmentation`
OPTIONS(
  model_type = 'KMEANS',
  num_clusters = 3,
  standardize_features = TRUE
) AS
SELECT
  age,
  tenure_months,
  avg_monthly_spend,
  num_support_tickets
FROM `ext-bidv-eda-internal.test.customer_churn_demo`;
